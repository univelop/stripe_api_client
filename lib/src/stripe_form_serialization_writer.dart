import 'package:collection/collection.dart';
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart'
    show Parsable, SerializationWriter, SerializationWriterFactory;
import 'package:microsoft_kiota_serialization_form/microsoft_kiota_serialization_form.dart';

/// Form-url-encoded serialization writer that uses bracket notation for nested
/// objects and arrays, matching Stripe's API expectations.
///
/// ## Why this exists
///
/// The Stripe API expects form-encoded request bodies with **bracket notation**
/// for nested structures, for example:
///
/// - `address[city]=Berlin` and `address[line1]=Main St` for nested objects
/// - `items[0][amount]=1000` for arrays of objects
///
/// The default [FormSerializationWriter] from `microsoft_kiota_serialization_form`
/// does not support this key prefixing. This writer extends it and maintains a
/// key prefix stack so that when writing nested [Parsable] objects or collections,
/// keys are emitted in the form `parent[child]` and `parent[0][field]`.
///
/// ## Usage
///
/// Use [StripeFormSerializationWriterFactory] when building the request adapter,
/// so that form-encoded requests (e.g. POST body) use this writer. See
/// [createStripeClient] in `stripe_client_factory.dart` for a full setup example.
///
/// ## Implementation note
///
/// This subclasses [FormSerializationWriter] to add key-prefix support until
/// equivalent behavior is available upstream (see kiota-dart).
class StripeFormSerializationWriter extends FormSerializationWriter {
  StripeFormSerializationWriter();

  final List<String> _keyPrefixStack = [];

  String? _makeKey(String? key) {
    if (key == null || key.isEmpty) return null;
    if (_keyPrefixStack.isEmpty) return key;
    final parts = [..._keyPrefixStack, key];
    final root = parts.firstOrNull ?? '';
    return root + parts.skip(1).map((p) => '[$p]').join('');
  }

  @override
  void writeStringValue(String? key, String? value) {
    super.writeStringValue(_makeKey(key), value);
  }

  @override
  void writeObjectValue<T extends Parsable>(
    String? key,
    T? value, [
    Iterable<Parsable?>? additionalValuesToMerge,
  ]) {
    var didPush = false;
    if (key != null && key.isNotEmpty) {
      _keyPrefixStack.add(key);
      didPush = true;
    }

    try {
      if (value == null) return;

      onBeforeObjectSerialization?.call(value);
      onStartObjectSerialization?.call(value, this);

      value.serialize(this);

      if (additionalValuesToMerge != null) {
        for (final additionalValue in additionalValuesToMerge) {
          if (additionalValue != null) {
            onBeforeObjectSerialization?.call(additionalValue);
            onStartObjectSerialization?.call(additionalValue, this);
            additionalValue.serialize(this);
            onAfterObjectSerialization?.call(additionalValue);
          }
        }
      }

      onAfterObjectSerialization?.call(value);
    } finally {
      if (didPush) _keyPrefixStack.removeLast();
    }
  }

  @override
  void writeCollectionOfObjectValues<T extends Parsable>(
    String? key,
    Iterable<T>? values,
  ) {
    if (values == null) return;
    var i = 0;
    for (final value in values) {
      var pushed = 0;
      if (key != null && key.isNotEmpty) {
        _keyPrefixStack.add(key);
        pushed++;
      }
      _keyPrefixStack.add('$i');
      pushed++;
      try {
        onBeforeObjectSerialization?.call(value);
        onStartObjectSerialization?.call(value, this);
        value.serialize(this);
        onAfterObjectSerialization?.call(value);
      } finally {
        for (var p = 0; p < pushed; p++) {
          _keyPrefixStack.removeLast();
        }
      }
      i++;
    }
  }
}

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
