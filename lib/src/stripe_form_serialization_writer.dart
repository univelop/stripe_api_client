import 'package:collection/collection.dart';
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart' show Parsable;
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
///
/// ## Array-of-primitive wrappers (e.g. payment_method_types)
///
/// The OpenAPI spec uses `anyOf: [array of string enum, string]`, which the
/// code generator emits as a composed type with an iterable of "Member1"
/// objects. Those Member1 classes have no string field—only [additionalData].
/// To serialize as Stripe expects (`payment_method_types[0]=bancontact`, etc.),
/// put the primitive value in [additionalData] under [primitiveValueKey]:
///
/// ```dart
/// final types = SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypes()
///   ..subscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1 = [
///     SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1()
///       ..additionalData[StripeFormSerializationWriter.primitiveValueKey] = 'bancontact',
///     SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodTypesMember1()
///       ..additionalData[StripeFormSerializationWriter.primitiveValueKey] = 'card',
///   ];
/// ```
class StripeFormSerializationWriter extends FormSerializationWriter {
  StripeFormSerializationWriter();

  /// Key used in [AdditionalDataHolder.additionalData] to store a single
  /// primitive value when the generated type is an array-of-primitive wrapper
  /// (e.g. payment_method_types). The writer will emit `key[0]=value`, etc.
  static const String primitiveValueKey = '#value';

  /// Stack of key segments for nested objects/arrays; used by [_makeKey].
  final List<String> _keyPrefixStack = [];

  /// Builds the form key by prefixing [key] with the current stack, e.g.
  /// stack ["address"] + key "city" → "address[city]".
  String? _makeKey(String? key) {
    if (key == null || key.isEmpty) return null;
    if (_keyPrefixStack.isEmpty) return key;
    final parts = [..._keyPrefixStack, key];
    final root = parts.firstOrNull ?? '';
    return root + parts.skip(1).map((p) => '[$p]').join('');
  }

  /// Key for the current path (e.g. "payment_method_types[0]").
  String? get _currentKey {
    if (_keyPrefixStack.isEmpty) return null;
    final root = _keyPrefixStack.firstOrNull ?? '';
    return root + _keyPrefixStack.skip(1).map((p) => '[$p]').join('');
  }

  /// Writes [value] at the current path (used for array-of-primitive items).
  void _writeStringAtCurrentPath(String? value) {
    final key = _currentKey;
    if (key != null && value != null) {
      super.writeStringValue(key, value);
    }
  }

  @override
  void writeStringValue(String? key, String? value) {
    // Apply current prefix stack so nested keys become e.g. address[city].
    super.writeStringValue(_makeKey(key), value);
  }

  @override
  void writeObjectValue<T extends Parsable>(
    String? key,
    T? value, [
    Iterable<Parsable?>? additionalValuesToMerge,
  ]) {
    // Push this object's key onto the prefix stack so nested writes use
    // e.g. "address" → address[city], address[line1].
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

      // Merge any additional values into the same key scope (Kiota contract).
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
      // Push key and index so nested writes become e.g. items[0][amount].
      var pushed = 0;
      if (key != null && key.isNotEmpty) {
        _keyPrefixStack.add(key);
        pushed++;
      }
      _keyPrefixStack.add('$i');
      pushed++;
      try {
        // Array-of-primitive wrappers: generated "Member1" types have no string
        // field; the value is provided via additionalData[primitiveValueKey].
        final primitive = value is AdditionalDataHolder
            ? (value as AdditionalDataHolder).additionalData[primitiveValueKey]
            : null;
        if (primitive is String) {
          _writeStringAtCurrentPath(primitive);
        } else {
          onBeforeObjectSerialization?.call(value);
          onStartObjectSerialization?.call(value, this);
          value.serialize(this);
          onAfterObjectSerialization?.call(value);
        }
      } finally {
        for (var p = 0; p < pushed; p++) {
          _keyPrefixStack.removeLast();
        }
      }
      i++;
    }
  }
}
