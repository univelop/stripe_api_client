#!/bin/bash

# Script to generate Stripe API client code from OpenAPI specification
# This script downloads the latest Stripe OpenAPI spec and generates Dart code

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
STRIPE_SPEC_URL="https://raw.githubusercontent.com/stripe/openapi/refs/heads/master/openapi/spec3.json"
TEMP_DIR=".tmp_generated"
TEMP_SPEC_FILE="temp_spec.json"
PACKAGE_NAME="stripe_api_client"
PACKAGE_DESCRIPTION="Stripe API Client generated from OpenAPI specification"
PACKAGE_AUTHOR="Univelop GmbH"

# Escape values for use in command line (replace spaces with escaped spaces)
PACKAGE_DESCRIPTION_ESC="${PACKAGE_DESCRIPTION// /\\ }"
PACKAGE_AUTHOR_ESC="${PACKAGE_AUTHOR// /\\ }"

echo -e "${GREEN}Stripe API Client Code Generator${NC}"
echo "=================================="

# Check if openapi-generator-cli is available
echo -e "${YELLOW}Checking for openapi-generator-cli...${NC}"
if ! command -v openapi-generator-cli &> /dev/null; then
    echo -e "${RED}Error: openapi-generator-cli is not installed.${NC}"
    echo "Please install it using one of:"
    echo "  npm: npm install -g @openapitools/openapi-generator-cli"
    echo "  pip: pip install openapi-generator-cli"
    echo "  brew: brew install openapi-generator"
    echo "See https://github.com/OpenAPITools/openapi-generator?tab=readme-ov-file#1---installation"
    exit 1
fi

# Get the directory where the script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

# Download Stripe OpenAPI specification
echo -e "${YELLOW}Downloading Stripe OpenAPI specification...${NC}"
if ! curl -L -f -o "$TEMP_SPEC_FILE" "$STRIPE_SPEC_URL"; then
    echo -e "${RED}Error: Failed to download OpenAPI specification${NC}"
    exit 1
fi
echo -e "${GREEN}✓ Downloaded specification${NC}"

# Clean up old generated directory
if [ -d "$TEMP_DIR" ]; then
    echo -e "${YELLOW}Cleaning up old generated files...${NC}"
    rm -rf "$TEMP_DIR"
fi

# Generate code using openapi-generator-cli
echo -e "${YELLOW}Generating Dart code...${NC}"
if ! openapi-generator-cli generate \
    -i "$TEMP_SPEC_FILE" \
    -g dart-dio \
    -o "$TEMP_DIR" \
    -p "pubName=$PACKAGE_NAME" \
    -p "pubDescription=${PACKAGE_DESCRIPTION_ESC}" \
    -p "pubAuthor=${PACKAGE_AUTHOR_ESC}"; then
    echo -e "${RED}Error: Code generation failed${NC}"
    rm -f "$TEMP_SPEC_FILE"
    exit 1
fi
echo -e "${GREEN}✓ Code generated${NC}"

# Copy generated lib/ to root lib/ (preserve builder files if they exist)
echo -e "${YELLOW}Copying generated code to lib/...${NC}"
if [ -d "$TEMP_DIR/lib" ]; then
    # Create lib directory if it doesn't exist
    mkdir -p lib
    
    # Copy all files from generated lib to root lib
    # Exclude builder-related files if they exist
    rsync -av --exclude='builder.dart' --exclude='src/' "$TEMP_DIR/lib/" lib/ || {
        # Fallback to cp if rsync is not available
        find "$TEMP_DIR/lib" -type f -not -path "*/builder.dart" -not -path "*/src/*" -exec cp --parents {} lib/ \;
    }
    echo -e "${GREEN}✓ Copied generated code${NC}"
else
    echo -e "${RED}Error: Generated lib directory not found${NC}"
    rm -f "$TEMP_SPEC_FILE"
    rm -rf "$TEMP_DIR"
    exit 1
fi

# Merge pubspec.yaml
echo -e "${YELLOW}Merging pubspec.yaml...${NC}"
if [ -f "$TEMP_DIR/pubspec.yaml" ] && [ -f "pubspec.yaml" ]; then
    # Extract metadata from base pubspec.yaml
    BASE_NAME=$(grep '^name:' pubspec.yaml | sed 's/name: //' | xargs)
    BASE_VERSION=$(grep '^version:' pubspec.yaml | sed 's/version: //' | xargs)
    BASE_HOMEPAGE=$(grep '^homepage:' pubspec.yaml | sed 's/homepage: //' | xargs)
    BASE_REPOSITORY=$(grep '^repository:' pubspec.yaml | sed 's/repository: //' | xargs)
    
    # Use generated pubspec.yaml as base
    cp "$TEMP_DIR/pubspec.yaml" pubspec.yaml.new
    
    # Update metadata in generated pubspec using sed with proper escaping
    if [ -n "$BASE_NAME" ]; then
        sed -i.bak "s/^name:.*/name: $BASE_NAME/" pubspec.yaml.new
    fi
    if [ -n "$BASE_VERSION" ]; then
        sed -i.bak "s/^version:.*/version: $BASE_VERSION/" pubspec.yaml.new
    fi
    if [ -n "$BASE_HOMEPAGE" ]; then
        sed -i.bak "s|^homepage:.*|homepage: $BASE_HOMEPAGE|" pubspec.yaml.new
    fi
    if [ -n "$BASE_REPOSITORY" ]; then
        sed -i.bak "s|^repository:.*|repository: $BASE_REPOSITORY|" pubspec.yaml.new
    fi
    
    # Add environment section from base if it exists (simple approach: append after name)
    if grep -q "^environment:" pubspec.yaml; then
        ENV_LINE=$(grep "^environment:" pubspec.yaml)
        SDK_LINE=$(grep "^  sdk:" pubspec.yaml)
        # Remove only the environment: and sdk: lines (not the whole section)
        sed -i.bak '/^environment:/d' pubspec.yaml.new || true
        sed -i.bak '/^  sdk:/d' pubspec.yaml.new || true
        # Add environment section after name
        sed -i.bak "/^name:.*/a\\
$ENV_LINE\\
$SDK_LINE
" pubspec.yaml.new
    fi
    
    # Clean up backup files
    rm -f pubspec.yaml.new.bak
    
    # Replace original with merged version
    mv pubspec.yaml.new pubspec.yaml
    echo -e "${GREEN}✓ Merged pubspec.yaml${NC}"
fi

# Handle analysis_options.yaml (keep our custom one for now)
if [ -f "$TEMP_DIR/analysis_options.yaml" ]; then
    echo -e "${YELLOW}Note: Generated analysis_options.yaml available at $TEMP_DIR/analysis_options.yaml${NC}"
    echo "Keeping custom analysis_options.yaml"
fi

# Format generated code
echo -e "${YELLOW}Formatting generated code...${NC}"
if command -v dart &> /dev/null; then
    dart format lib/ 2>/dev/null || echo -e "${YELLOW}Warning: Could not format code (dart format not available)${NC}"
    echo -e "${GREEN}✓ Formatted code${NC}"
else
    echo -e "${YELLOW}Warning: dart not found, skipping formatting${NC}"
fi

# Cleanup
echo -e "${YELLOW}Cleaning up temporary files...${NC}"
rm -f "$TEMP_SPEC_FILE"
rm -rf "$TEMP_DIR"
echo -e "${GREEN}✓ Cleanup complete${NC}"

echo ""
echo -e "${GREEN}✓ Code generation completed successfully!${NC}"
echo "You can now use the generated Stripe API client."
