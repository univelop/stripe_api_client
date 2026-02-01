/// Stripe API Client
///
/// This is the main entry point for the Stripe API Client package.
///
/// Use [createStripeClient] to get a configured [StripeClient] for a given
/// API key. The package also exports [StripeClient], [StripeFormSerializationWriter],
/// and [StripeFormSerializationWriterFactory] for advanced use.
library stripe_api_client;

export 'src/stripe_form_serialization_writer.dart';
export 'src/stripe_form_serialization_writer_factory.dart';
export 'stripe_client.dart';
export 'stripe_client_factory.dart';
export 'v1/v1_request_builder.dart';
