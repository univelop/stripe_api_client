#!/bin/bash
# Download Stripe OpenAPI spec and calculate hash

set -e

SPEC_URL="${1:-https://raw.githubusercontent.com/stripe/openapi/refs/heads/master/openapi/spec3.json}"
OUTPUT_FILE="${2:-stripe_spec.json}"

echo "Downloading Stripe OpenAPI specification..."
curl -L -f -o "${OUTPUT_FILE}" "${SPEC_URL}"

NEW_HASH=$(sha256sum "${OUTPUT_FILE}" | cut -d' ' -f1)
echo "new_hash=${NEW_HASH}" >> "${GITHUB_OUTPUT}"
echo "Downloaded spec with hash: ${NEW_HASH}"
