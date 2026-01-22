# Stripe API Client

A Dart package providing a complete Stripe API client, automatically generated from the official [Stripe OpenAPI specification](https://github.com/stripe/openapi).

## Features

- ✅ Automatically generated from Stripe's latest OpenAPI specification
- ✅ Complete type-safe Dart API client
- ✅ Generated using Microsoft Kiota
- ✅ Built-in serialization support
- ✅ Always up-to-date with Stripe's API

## Installation

### Prerequisites

Before generating code, you need to install `kiota`. Choose one of the following installation methods:

#### Option 1: Homebrew (macOS)

```bash
brew install microsoft/kiota/kiota
```

#### Option 2: Direct Download

Download the latest release from [Kiota Releases](https://github.com/microsoft/kiota/releases) for your platform.

#### Option 3: Package Managers

- **Linux**: See installation instructions at [Get Kiota for Linux](https://aka.ms/get/kiota/linux)
- **Windows**: See installation instructions at [Get Kiota for Windows](https://aka.ms/get/kiota/windows)

For more installation options, see the [Kiota Installation Guide](https://learn.microsoft.com/en-us/openapi/kiota/install).

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
import 'package:stripe_api_client/stripe_api_client.dart';
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';

void main() async {
  // Create an authentication provider
  // For Stripe, you'll need to use an API key authentication provider
  var authProvider = AnonymousAuthenticationProvider();
  
  // Create a request adapter
  var requestAdapter = DefaultRequestAdapter(authProvider: authProvider);
  
  // Initialize the Stripe client
  var client = StripeClient(requestAdapter);
  
  // Make API calls using the generated client
  // Example: await client.customers.getAsync();
}
```

### With Stripe API Key Authentication

```dart
import 'package:stripe_api_client/stripe_api_client.dart';
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';

void main() async {
  // Create a custom authentication provider for Stripe API keys
  // You'll need to implement this based on Stripe's authentication requirements
  var authProvider = AnonymousAuthenticationProvider();
  
  // Create a request adapter with custom headers for Stripe API key
  var requestAdapter = DefaultRequestAdapter(authProvider: authProvider);
  // Add Stripe API key to headers
  // requestAdapter.baseUrl = 'https://api.stripe.com/v1';
  
  var client = StripeClient(requestAdapter);
  
  // Use the client to make authenticated API calls
}
```

For more details on authentication providers and usage patterns, see the [Kiota Dart Quickstart](https://learn.microsoft.com/en-us/openapi/kiota/quickstarts/dart).

## Development

### Generating Code

This package uses a shell script to automatically generate code from the Stripe OpenAPI specification.

To generate the code:

```bash
./generate.sh
```

The script will:
1. Download the latest Stripe OpenAPI specification from GitHub
2. Use `kiota` to generate Dart code
3. Copy generated code into the package structure
4. Format the generated code
5. Clean up temporary files

### How It Works

1. The script downloads the latest Stripe OpenAPI specification from GitHub
2. `kiota` generates Dart code using the `dart` language generator
3. Generated code is copied into the package structure
4. The generated code is formatted using `dart format`
5. The package is ready to use

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
- [Kiota Documentation](https://learn.microsoft.com/en-us/openapi/kiota/)
- [Kiota Dart Quickstart](https://learn.microsoft.com/en-us/openapi/kiota/quickstarts/dart)
- [Kiota GitHub](https://github.com/microsoft/kiota)
