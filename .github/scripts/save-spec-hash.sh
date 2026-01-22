#!/bin/bash
# Save the spec hash to file

set -e

HASH="${1}"
HASH_FILE="${2:-.stripe_spec_hash}"

if [ -z "${HASH}" ]; then
  echo "Error: Hash is required"
  exit 1
fi

echo "${HASH}" > "${HASH_FILE}"
echo "✓ Spec hash saved to ${HASH_FILE}"
