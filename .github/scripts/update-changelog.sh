#!/bin/bash
# Update CHANGELOG.md with new version entry

set -e

VERSION="${1}"
CHANGELOG_FILE="${2:-CHANGELOG.md}"

if [ -z "${VERSION}" ]; then
  echo "Error: Version is required"
  exit 1
fi

DATE=$(date +%Y-%m-%d)

# Add new entry to CHANGELOG after the first line (after "# Changelog")
sed -i "2a\\
\\
## [${VERSION}] - ${DATE}\\
\\
### Changed\\
- Updated Stripe OpenAPI specification to latest version\\
" "${CHANGELOG_FILE}"

echo "✓ CHANGELOG.md updated with version ${VERSION}"
