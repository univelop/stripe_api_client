import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';

import 'src/stripe_form_serialization_writer.dart';
import 'stripe_client.dart';

/// Creates a [StripeClient] configured for the given Stripe secret key.
///
/// This is the recommended way to obtain a Stripe API client. It sets up:
///
/// - **Authentication**: Bearer token in the `Authorization` header using
///   [ApiKeyAuthenticationProvider].
/// - **Form serialization**: A custom form writer that uses bracket notation
///   for nested objects (e.g. `address[city]`, `items[0][amount]`), which
///   Stripe's API expects. See [StripeFormSerializationWriter] for details.
///
/// Example:
///
/// ```dart
/// final client = createStripeClient('sk_test_...');
/// final customers = await client.v1.customers.getAsync(...);
/// ```
///
/// For advanced use (custom auth, custom base URL, etc.), construct
/// [StripeClient] manually with your own [RequestAdapter], and use
/// [StripeFormSerializationWriterFactory] as the form serialization writer
/// when building that adapter.
StripeClient createStripeClient(String secretKey) {
  final authProvider = ApiKeyAuthenticationProvider(
    apiKey: 'Bearer $secretKey',
    parameterName: 'Authorization',
    keyLocation: ApiKeyLocation.header,
  );

  final requestAdapter = DefaultRequestAdapter(
    authProvider: authProvider,
    sWriterFactory: const StripeFormSerializationWriterFactory(),
  );

  return StripeClient(requestAdapter);
}
