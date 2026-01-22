#!/bin/bash
# Install kiota binary for Linux

set -e

KIOTA_VERSION="${1:-1.18.1}"
KIOTA_URL="https://github.com/microsoft/kiota/releases/download/v${KIOTA_VERSION}/kiota-linux-x64"

echo "Installing kiota version ${KIOTA_VERSION}..."

wget -q "${KIOTA_URL}" -O /tmp/kiota
chmod +x /tmp/kiota
sudo mv /tmp/kiota /usr/local/bin/kiota

echo "Verifying installation..."
kiota --version

echo "✓ kiota installed successfully"
