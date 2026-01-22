#!/bin/bash

# Test script for pubspec.yaml merge logic
# NOTE: This script is now obsolete since Kiota doesn't generate pubspec.yaml
# Keeping it for reference, but it's no longer used in the generation process

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${YELLOW}NOTE: This test script is obsolete.${NC}"
echo -e "${YELLOW}Kiota doesn't generate pubspec.yaml, so merge logic is no longer needed.${NC}"
echo ""
echo -e "${GREEN}Testing pubspec.yaml merge logic (legacy test)${NC}"
echo "=================================="

# Create a temporary directory for testing
TEST_DIR=".test_merge"
rm -rf "$TEST_DIR"
mkdir -p "$TEST_DIR"

# Create a mock generated pubspec.yaml (simulating old openapi-generator output)
cat > "$TEST_DIR/pubspec.yaml" << 'EOF'
name: stripe_api_client
version: 1.0.0
description: A generated Dart package
homepage: https://example.com
repository: https://example.com/repo
environment:
  sdk: '>=2.0.0 <3.0.0'
dependencies:
  # Kiota uses microsoft_kiota_bundle instead
  microsoft_kiota_bundle: ^1.0.0
EOF

# Copy base pubspec.yaml for testing
cp pubspec.yaml "$TEST_DIR/pubspec_base.yaml"

echo -e "${YELLOW}Base pubspec.yaml:${NC}"
cat "$TEST_DIR/pubspec_base.yaml"
echo ""

echo -e "${YELLOW}Generated pubspec.yaml:${NC}"
cat "$TEST_DIR/pubspec.yaml"
echo ""

# Test the merge logic
cd "$TEST_DIR"

BASE_NAME=$(grep '^name:' pubspec_base.yaml | sed 's/name: //' | xargs)
BASE_VERSION=$(grep '^version:' pubspec_base.yaml | sed 's/version: //' | xargs)
BASE_HOMEPAGE=$(grep '^homepage:' pubspec_base.yaml | sed 's/homepage: //' | xargs)
BASE_REPOSITORY=$(grep '^repository:' pubspec_base.yaml | sed 's/repository: //' | xargs)

# Use generated pubspec.yaml as base
cp pubspec.yaml pubspec.yaml.new

# Update metadata in generated pubspec
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

# Add environment section from base if it exists
if grep -q "^environment:" pubspec_base.yaml; then
    ENV_LINE=$(grep "^environment:" pubspec_base.yaml)
    SDK_LINE=$(grep "^  sdk:" pubspec_base.yaml)
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

cd ..

echo -e "${GREEN}Merged pubspec.yaml:${NC}"
cat "$TEST_DIR/pubspec.yaml.new"
echo ""

# Verify the merge
echo -e "${YELLOW}Verification:${NC}"
if grep -q "^name: $BASE_NAME" "$TEST_DIR/pubspec.yaml.new"; then
    echo -e "${GREEN}✓ Name merged correctly${NC}"
else
    echo -e "${RED}✗ Name merge failed${NC}"
fi

if grep -q "^version: $BASE_VERSION" "$TEST_DIR/pubspec.yaml.new"; then
    echo -e "${GREEN}✓ Version merged correctly${NC}"
else
    echo -e "${RED}✗ Version merge failed${NC}"
fi

if grep -q "^homepage: $BASE_HOMEPAGE" "$TEST_DIR/pubspec.yaml.new"; then
    echo -e "${GREEN}✓ Homepage merged correctly${NC}"
else
    echo -e "${RED}✗ Homepage merge failed${NC}"
fi

if grep -q "^repository: $BASE_REPOSITORY" "$TEST_DIR/pubspec.yaml.new"; then
    echo -e "${GREEN}✓ Repository merged correctly${NC}"
else
    echo -e "${RED}✗ Repository merge failed${NC}"
fi

if grep -q "^environment:" "$TEST_DIR/pubspec.yaml.new"; then
    echo -e "${GREEN}✓ Environment section present${NC}"
else
    echo -e "${YELLOW}⚠ Environment section not found (may be expected)${NC}"
fi

if grep -q "dio:" "$TEST_DIR/pubspec.yaml.new"; then
    echo -e "${GREEN}✓ Generated dependencies preserved${NC}"
else
    echo -e "${RED}✗ Generated dependencies missing${NC}"
fi

# Cleanup
rm -rf "$TEST_DIR"

echo ""
echo -e "${GREEN}Test completed!${NC}"
