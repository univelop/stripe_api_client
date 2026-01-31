import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart'
    show SerializationWriter, SerializationWriterFactory;

import 'stripe_form_serialization_writer.dart';

/// Factory for [StripeFormSerializationWriter].
///
/// Produces form-url-encoded writers with bracket notation for nested objects
/// and arrays. Use this as the form serialization writer when constructing a
/// [DefaultRequestAdapter] for the Stripe client (e.g. via [createStripeClient]).
class StripeFormSerializationWriterFactory
    implements SerializationWriterFactory {
  const StripeFormSerializationWriterFactory();

  @override
  SerializationWriter getSerializationWriter(String contentType) {
    if (contentType.toLowerCase() != validContentType) {
      throw ArgumentError(
        'The provided content type is not supported by '
        'StripeFormSerializationWriterFactory',
      );
    }
    return StripeFormSerializationWriter();
  }

  @override
  String get validContentType => 'application/x-www-form-urlencoded';
}
