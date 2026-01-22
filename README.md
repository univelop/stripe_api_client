# Stripe API Client

A Dart package providing a complete Stripe API client, automatically generated from the official [Stripe OpenAPI specification](https://github.com/stripe/openapi).

## Features

- ✅ Automatically generated from Stripe's latest OpenAPI specification
- ✅ Complete type-safe Dart API client
- ✅ Uses `dio` for HTTP requests
- ✅ Built-in serialization support
- ✅ Always up-to-date with Stripe's API

## Installation

### Prerequisites

Before using this package, you need to install `openapi-generator-cli`. Choose one of the following installation methods:

#### Option 1: npm (Recommended for CI/CD)

```bash
npm install -g @openapitools/openapi-generator-cli
```

#### Option 2: pip

```bash
pip install openapi-generator-cli
```

#### Option 3: Homebrew (macOS)

```bash
brew install openapi-generator
```

For more installation options, see the [OpenAPI Generator Installation Guide](https://github.com/OpenAPITools/openapi-generator?tab=readme-ov-file#1---installation).

### Add to your project

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  stripe_api_client:
    git:
      url: https://github.com/univelop/stripe_api_client.git
      ref: main
```

Or if published to pub.dev:

```yaml
dependencies:
  stripe_api_client: ^0.1.0
```

Then run:

```bash
dart pub get
```

## Usage

### Basic Example

```dart
import 'package:stripe_api_client/api.dart';

// Initialize the API client
final api = DefaultApi();

// Make API calls
try {
  final customers = await api.getCustomers();
  // Use the customers...
} catch (e) {
  print('Error: $e');
}
```

### With Authentication

```dart
import 'package:stripe_api_client/api.dart';
import 'package:dio/dio.dart';

// Create Dio instance with authentication
final dio = Dio(BaseOptions(
  headers: {
    'Authorization': 'Bearer YOUR_STRIPE_SECRET_KEY',
  },
));

final api = DefaultApi(dio);
```

## Development

### Generating Code

This package uses `build_runner` to automatically generate code from the Stripe OpenAPI specification.

To generate the code:

```bash
dart run build_runner build
```

To watch for changes and regenerate automatically:

```bash
dart run build_runner watch
```

### How It Works

1. The build process downloads the latest Stripe OpenAPI specification from GitHub
2. `openapi-generator-cli` generates Dart code using the `dart-dio` generator
3. Generated code is merged into the package structure
4. The package is ready to use

### Project Structure

```
stripe_api_client/
├── lib/
│   ├── api/          # Generated API client classes
│   ├── model/         # Generated data models
│   ├── auth/          # Authentication utilities
│   └── ...
├── pubspec.yaml
└── README.md
```

## Versioning

This package follows [Semantic Versioning](https://semver.org/). The version number reflects changes in the generated code based on Stripe's API updates:

- **PATCH**: Backward-compatible bug fixes, spec clarifications
- **MINOR**: New endpoints, new optional fields, new enum values
- **MAJOR**: Breaking changes (removed endpoints, required field changes, type changes)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

Copyright (c) 2025 Univelop GmbH

## Links

- [Stripe API Documentation](https://stripe.com/docs/api)
- [Stripe OpenAPI Specification](https://github.com/stripe/openapi)
- [OpenAPI Generator](https://openapi-generator.tech/)
