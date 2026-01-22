#!/bin/bash

# Script to generate Stripe API client code from OpenAPI specification
# This script downloads the latest Stripe OpenAPI spec and generates Dart code using kiota

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

# Check if kiota is available
echo -e "${YELLOW}Checking for kiota...${NC}"
if ! command -v kiota &> /dev/null; then
    echo -e "${RED}Error: kiota is not installed.${NC}"
    echo "Please install it using one of:"
    echo "  macOS: brew install microsoft/kiota/kiota"
    echo "  Linux: See https://aka.ms/get/kiota/linux"
    echo "  Windows: See https://aka.ms/get/kiota/windows"
    echo "  Or download from: https://github.com/microsoft/kiota/releases"
    echo "See https://learn.microsoft.com/en-us/openapi/kiota/install"
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

# Generate code using kiota
echo -e "${YELLOW}Generating Dart code with kiota...${NC}"
if ! kiota generate \
    -l dart \
    -d "$TEMP_SPEC_FILE" \
    -c StripeClient \
    -o "$TEMP_DIR" \
    --clean-output; then
    echo -e "${RED}Error: Code generation failed${NC}"
    rm -f "$TEMP_SPEC_FILE"
    exit 1
fi
echo -e "${GREEN}✓ Code generated${NC}"

# Copy generated code to root lib/
echo -e "${YELLOW}Copying generated code to lib/...${NC}"
# Kiota generates code directly in the output directory
# Check if there's a lib subdirectory (some generators create it) or files directly in output
if [ -d "$TEMP_DIR/lib" ]; then
    # If kiota created a lib subdirectory, copy its contents
    mkdir -p lib
    # Copy all files from generated lib to root lib, preserving structure
    if command -v rsync &> /dev/null; then
        rsync -av "$TEMP_DIR/lib/" lib/
    else
        cp -r "$TEMP_DIR/lib/"* lib/ 2>/dev/null || cp -r "$TEMP_DIR/lib/." lib/
    fi
    echo -e "${GREEN}✓ Copied generated code from lib/ subdirectory${NC}"
elif find "$TEMP_DIR" -name "*.dart" -type f | grep -q .; then
    # If Dart files are directly in the output directory or subdirectories
    mkdir -p lib
    # Copy entire directory structure at once (much faster than file-by-file)
    if command -v rsync &> /dev/null; then
        rsync -av "$TEMP_DIR/" lib/
    else
        cp -r "$TEMP_DIR/"* lib/ 2>/dev/null || cp -r "$TEMP_DIR/." lib/
    fi
    echo -e "${GREEN}✓ Copied generated Dart files${NC}"
else
    echo -e "${RED}Error: No generated Dart files found in $TEMP_DIR${NC}"
    echo "Kiota output structure may be different than expected."
    rm -f "$TEMP_SPEC_FILE"
    rm -rf "$TEMP_DIR"
    exit 1
fi

# Copy kiota-lock.json if it exists (for future updates using kiota update)
if [ -f "$TEMP_DIR/kiota-lock.json" ]; then
    cp "$TEMP_DIR/kiota-lock.json" .kiota-lock.json 2>/dev/null || true
    echo -e "${GREEN}✓ Copied kiota-lock.json${NC}"
fi

# Note: Kiota doesn't generate pubspec.yaml, so we keep our existing one
# We may need to add kiota dependencies manually if required
echo -e "${YELLOW}Note: Kiota doesn't generate pubspec.yaml${NC}"
echo "Keeping existing pubspec.yaml. You may need to add kiota dependencies manually."

# Note: Kiota doesn't generate analysis_options.yaml, so we keep our existing one
echo "Keeping custom analysis_options.yaml"

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
