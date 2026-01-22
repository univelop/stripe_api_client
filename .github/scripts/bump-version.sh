#!/bin/bash
# Bump version in pubspec.yaml

set -e

BUMP_TYPE="${1:-patch}"
PUBSPEC_FILE="${2:-pubspec.yaml}"

if [ ! -f "${PUBSPEC_FILE}" ]; then
  echo "Error: ${PUBSPEC_FILE} not found"
  exit 1
fi

# Read current version
CURRENT_VERSION=$(grep '^version:' "${PUBSPEC_FILE}" | sed 's/version: //')
echo "Current version: ${CURRENT_VERSION}"

# Parse version components
IFS='.' read -r MAJOR MINOR PATCH <<< "${CURRENT_VERSION}"

# Bump version
case "${BUMP_TYPE}" in
  major)
    MAJOR=$((MAJOR + 1))
    MINOR=0
    PATCH=0
    ;;
  minor)
    MINOR=$((MINOR + 1))
    PATCH=0
    ;;
  patch)
    PATCH=$((PATCH + 1))
    ;;
  *)
    echo "Error: Invalid bump type: ${BUMP_TYPE}"
    exit 1
    ;;
esac

NEW_VERSION="${MAJOR}.${MINOR}.${PATCH}"
echo "New version: ${NEW_VERSION}"
echo "new_version=${NEW_VERSION}" >> "${GITHUB_OUTPUT}"
echo "bump_type=${BUMP_TYPE}" >> "${GITHUB_OUTPUT}"

# Update pubspec.yaml
sed -i "s/^version: .*/version: ${NEW_VERSION}/" "${PUBSPEC_FILE}"

echo "✓ Version bumped to ${NEW_VERSION}"
