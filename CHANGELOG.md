# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed
- Migrated from `openapi-generator-cli` to `kiota` for code generation
- Updated `generate.sh` to use kiota instead of openapi-generator-cli
- Updated GitHub Actions workflow to install kiota instead of openapi-generator-cli
- Updated SDK requirement to `>=3.6.0` (required by kiota)
- Updated dependencies to use `microsoft_kiota_bundle` package

### Removed
- Removed pubspec.yaml merge logic (kiota doesn't generate pubspec.yaml)

## [0.1.0] - 2026-01-22

### Added
- Initial package setup
- Automatic code generation from Stripe OpenAPI specification
- Shell script (`generate.sh`) for code generation
- GitHub Actions workflow for automatic updates
