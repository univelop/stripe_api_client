# Stripe API Client

> **⚠️ Disclaimer:** This is an unofficial package and is not affiliated with or endorsed by Stripe, Inc.

A Dart package providing a complete Stripe API client, automatically generated from the official [Stripe OpenAPI specification](https://github.com/stripe/openapi).

## Features

- ✅ Automatically generated from Stripe's latest OpenAPI specification
- ✅ Complete type-safe Dart API client
- ✅ Generated using Microsoft Kiota
- ✅ Built-in serialization support
- ✅ Always up-to-date with Stripe's API

## Installation

Add this package to your `pubspec.yaml`:

```yaml
dependencies:
  stripe_api_client: ^0.2.2
```

Then run:

```bash
dart pub get
```

### Alternative: Install from Git

If you need the latest development version, you can install directly from GitHub:

```yaml
dependencies:
  stripe_api_client:
    git:
      url: https://github.com/univelop/stripe_api_client.git
      ref: main
```

## Usage

### Basic Example with Stripe API Key Authentication

The simplest way to get a configured Stripe client is to use [createStripeClient], which sets up authentication and the correct form serialization for Stripe’s API:

```dart
import 'package:stripe_api_client/stripe_api_client.dart';
import 'package:stripe_api_client/v1/customers/customers_get_request_body.dart';

final client = createStripeClient('sk_test_your_api_key_here');

final response = await client.v1.customers.getAsync(
  CustomersGetRequestBody(),
);
```

For advanced use (custom auth, base URL, etc.), build a [StripeClient] manually with your own request adapter and use [StripeFormSerializationWriterFactory] as the form serialization writer. See the [Kiota Dart Quickstart](https://learn.microsoft.com/en-us/openapi/kiota/quickstarts/dart) for details on authentication providers and usage patterns.

### Working Example

See the [`example/`](example/) directory for a complete working example that demonstrates:

- How to set up authentication with Stripe API keys
- How to list customers from your Stripe account
- How to use environment variables for configuration

The example includes detailed setup instructions in [`example/README.md`](example/README.md).

### Custom Code in This Package

Aside from the generated API client, this package contains **one custom piece of code**: the form serialization writer in `lib/src/stripe_form_serialization_writer.dart` (and its factory [StripeFormSerializationWriterFactory]).

**Why it’s needed:** Stripe’s API expects form-encoded request bodies with **bracket notation** for nested structures (e.g. `address[city]=Berlin`, `items[0][amount]=1000`). The default form writer from the Kiota serialization libraries does not support this key prefixing. The custom writer extends the standard form writer and maintains a key prefix stack so that nested objects and arrays are serialized in the format Stripe expects. Without it, requests that send nested or array data in the body (e.g. creating or updating resources with nested fields) would not match Stripe’s API and could fail or behave incorrectly.

[createStripeClient] wires this writer into the request adapter so you get correct behavior by default.

## Development

### Prerequisites

To generate code from the Stripe OpenAPI specification, you need to install `kiota`. Choose one of the following installation methods:

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
├── example/           # Working example demonstrating usage
│   ├── list_customers.dart
│   └── README.md
├── lib/
│   ├── src/           # Custom (non-generated) code
│   │   └── stripe_form_serialization_writer.dart
│   ├── stripe_client.dart
│   ├── stripe_client_factory.dart  # createStripeClient()
│   ├── stripe_api_client.dart     # Main export
│   ├── models/        # Generated data models
│   ├── v1/            # Generated API client classes
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
