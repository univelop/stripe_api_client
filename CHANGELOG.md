# Changelog


## [0.2.2] - 2026-01-22


## [0.2.1] - 2026-01-22

### Changed
- Refactor: simplify example to use ApiKeyAuthenticationProvider


## [0.2.0] - 2026-01-22

### Added
- add automated versioning based on conventional commits
- add example demonstrating Stripe API client usage
- migrate from openapi-generator-cli to kiota

### Changed
- Performance: optimize file copying in generate script using rsync
- pivot to a shell based generation script
- Initial commit: Stripe API Client package setup

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.0] - 2026-01-22

### Added
- Initial package setup
- Automatic code generation from Stripe OpenAPI specification
- Shell script (`generate.sh`) for code generation
- GitHub Actions workflow for automatic updates
