#!/bin/bash
# Analyze conventional commits to determine version bump type
# Returns: major, minor, or patch

set -e

# Get the last tag, or use initial commit if no tags exist
LAST_TAG=$(git describe --tags --abbrev=0 2>/dev/null || echo "")
if [ -z "${LAST_TAG}" ]; then
  # No tags exist, check from initial commit
  COMMIT_RANGE="HEAD"
else
  # Get commits since last tag
  COMMIT_RANGE="${LAST_TAG}..HEAD"
fi

# Get commit count
COMMIT_COUNT=$(git rev-list --count ${COMMIT_RANGE} --no-merges 2>/dev/null || echo "0")

if [ "${COMMIT_COUNT}" -eq 0 ]; then
  echo "patch"
  exit 0
fi

BUMP_TYPE="patch"

# Get all commit hashes since last tag
COMMIT_HASHES=$(git rev-list ${COMMIT_RANGE} --no-merges)

# Check each commit for conventional commit format
for commit_hash in ${COMMIT_HASHES}; do
  # Get full commit message (subject + body)
  COMMIT_MSG=$(git log --format="%B" -1 ${commit_hash} 2>/dev/null)
  COMMIT_SUBJECT=$(echo "${COMMIT_MSG}" | head -n1)
  
  # Check for BREAKING CHANGE in commit body
  if echo "${COMMIT_MSG}" | grep -qi "BREAKING CHANGE"; then
    BUMP_TYPE="major"
    break
  fi
  
  # Check commit subject for breaking change indicator (! or BREAKING)
  if echo "${COMMIT_SUBJECT}" | grep -qiE "!.*:|BREAKING"; then
    BUMP_TYPE="major"
    break
  fi
  
  # Check for feat: (minor version bump)
  if echo "${COMMIT_SUBJECT}" | grep -qiE "^feat(\(.+\))?:"; then
    if [ "${BUMP_TYPE}" != "major" ]; then
      BUMP_TYPE="minor"
    fi
  fi
  
  # Check for fix: (patch version bump, but only if no feat found)
  if echo "${COMMIT_SUBJECT}" | grep -qiE "^fix(\(.+\))?:"; then
    # Already patch, no change needed
    :
  fi
  
  # Other types (chore, docs, style, refactor, perf, test, build, ci) don't bump version
  # unless they have BREAKING CHANGE
  
done

echo "${BUMP_TYPE}"
