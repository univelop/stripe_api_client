#!/bin/bash
# Generate changelog entries from conventional commits

set -e

VERSION="${1}"
CHANGELOG_FILE="${2:-CHANGELOG.md}"

if [ -z "${VERSION}" ]; then
  echo "Error: Version is required"
  exit 1
fi

DATE=$(date +%Y-%m-%d)

# Get the last tag, or use initial commit if no tags exist
LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null || echo "")
if [ -z "${LAST_TAG}" ]; then
  # No tags exist, get all commits
  COMMIT_RANGE="HEAD"
else
  # Get commits since last tag
  COMMIT_RANGE="${LAST_TAG}..HEAD"
fi

# Get commit count
COMMIT_COUNT=$(git rev-list --count ${COMMIT_RANGE} --no-merges 2>/dev/null || echo "0")

if [ "${COMMIT_COUNT}" -eq 0 ]; then
  echo "No commits found to generate changelog"
  exit 0
fi

# Initialize changelog sections
ADDED=""
CHANGED=""
DEPRECATED=""
REMOVED=""
FIXED=""
SECURITY=""

# Get all commit hashes since last tag
COMMIT_HASHES=$(git rev-list ${COMMIT_RANGE} --no-merges)

# Process each commit
for commit_hash in ${COMMIT_HASHES}; do
  # Get full commit message
  COMMIT_MSG=$(git log --format="%B" -1 ${commit_hash} 2>/dev/null)
  COMMIT_SUBJECT=$(echo "${COMMIT_MSG}" | head -n1)
  COMMIT_BODY=$(echo "${COMMIT_MSG}" | tail -n +2)
  
  # Skip if empty
  [ -z "${COMMIT_SUBJECT}" ] && continue
  
  # Extract type and description from conventional commit
  if echo "${COMMIT_SUBJECT}" | grep -qiE "^(feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert)(\(.+\))?:"; then
    TYPE=$(echo "${COMMIT_SUBJECT}" | sed -E 's/^([^:]+):.*/\1/' | sed -E 's/^([^(]+)(\(.+\))?/\1/' | tr '[:upper:]' '[:lower:]')
    DESCRIPTION=$(echo "${COMMIT_SUBJECT}" | sed -E 's/^[^:]+:\s*//')
    
    # Check for BREAKING CHANGE
    BREAKING=false
    if echo "${COMMIT_BODY}" | grep -qi "BREAKING CHANGE"; then
      BREAKING=true
    fi
    if echo "${COMMIT_SUBJECT}" | grep -qiE "!.*:|BREAKING"; then
      BREAKING=true
    fi
    
    # Categorize by type
    case "${TYPE}" in
      feat)
        if [ -n "${ADDED}" ]; then
          ADDED="${ADDED}\n- ${DESCRIPTION}"
        else
          ADDED="- ${DESCRIPTION}"
        fi
        if [ "${BREAKING}" = true ]; then
          if [ -n "${REMOVED}" ]; then
            REMOVED="${REMOVED}\n- **BREAKING:** ${DESCRIPTION}"
          else
            REMOVED="- **BREAKING:** ${DESCRIPTION}"
          fi
        fi
        ;;
      fix)
        if [ -n "${FIXED}" ]; then
          FIXED="${FIXED}\n- ${DESCRIPTION}"
        else
          FIXED="- ${DESCRIPTION}"
        fi
        ;;
      perf)
        if [ -n "${CHANGED}" ]; then
          CHANGED="${CHANGED}\n- Performance: ${DESCRIPTION}"
        else
          CHANGED="- Performance: ${DESCRIPTION}"
        fi
        ;;
      refactor)
        if [ -n "${CHANGED}" ]; then
          CHANGED="${CHANGED}\n- Refactor: ${DESCRIPTION}"
        else
          CHANGED="- Refactor: ${DESCRIPTION}"
        fi
        ;;
      docs|style|test|build|ci|chore)
        # These typically don't go in changelog unless breaking
        if [ "${BREAKING}" = true ]; then
          if [ -n "${REMOVED}" ]; then
            REMOVED="${REMOVED}\n- **BREAKING:** ${DESCRIPTION}"
          else
            REMOVED="- **BREAKING:** ${DESCRIPTION}"
          fi
        fi
        ;;
    esac
  else
    # Non-conventional commit, add to changed
    if [ -n "${CHANGED}" ]; then
      CHANGED="${CHANGED}\n- ${COMMIT_SUBJECT}"
    else
      CHANGED="- ${COMMIT_SUBJECT}"
    fi
  fi
done

# Build changelog entry
CHANGELOG_ENTRY="## [${VERSION}] - ${DATE}"

if [ -n "${ADDED}" ]; then
  CHANGELOG_ENTRY="${CHANGELOG_ENTRY}\n\n### Added\n${ADDED}"
fi

if [ -n "${CHANGED}" ]; then
  CHANGELOG_ENTRY="${CHANGELOG_ENTRY}\n\n### Changed\n${CHANGED}"
fi

if [ -n "${DEPRECATED}" ]; then
  CHANGELOG_ENTRY="${CHANGELOG_ENTRY}\n\n### Deprecated\n${DEPRECATED}"
fi

if [ -n "${REMOVED}" ]; then
  CHANGELOG_ENTRY="${CHANGELOG_ENTRY}\n\n### Removed\n${REMOVED}"
fi

if [ -n "${FIXED}" ]; then
  CHANGELOG_ENTRY="${CHANGELOG_ENTRY}\n\n### Fixed\n${FIXED}"
fi

if [ -n "${SECURITY}" ]; then
  CHANGELOG_ENTRY="${CHANGELOG_ENTRY}\n\n### Security\n${SECURITY}"
fi

# Add to changelog after the header (after "# Changelog" and blank line)
sed -i "2a\\
\\
${CHANGELOG_ENTRY}\\
" "${CHANGELOG_FILE}"

echo "✓ CHANGELOG.md updated with version ${VERSION}"
