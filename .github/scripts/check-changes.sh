#!/bin/bash
# Check if the OpenAPI spec has changed

set -e

HASH_FILE="${1:-.stripe_spec_hash}"
NEW_HASH="${2}"

if [ -f "${HASH_FILE}" ]; then
  OLD_HASH=$(cat "${HASH_FILE}")
  echo "old_hash=${OLD_HASH}" >> "${GITHUB_OUTPUT}"
else
  echo "old_hash=" >> "${GITHUB_OUTPUT}"
  OLD_HASH=""
fi

if [ "${NEW_HASH}" != "${OLD_HASH}" ]; then
  echo "has_changes=true" >> "${GITHUB_OUTPUT}"
  echo "Changes detected in Stripe OpenAPI spec"
else
  echo "has_changes=false" >> "${GITHUB_OUTPUT}"
  echo "No changes detected"
fi
