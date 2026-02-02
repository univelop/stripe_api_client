import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';

/// Request adapter that formats query parameters for the Stripe API.
///
/// Stripe expects array query parameters with bracket notation, e.g.
/// `expand[]=discounts` instead of `expand=discounts`. This adapter
/// overrides the send methods and, before delegating:
/// - Mutates [RequestInformation.queryParameters] so that any parameter
///   whose value is a [List] uses the key with a `[]` suffix.
/// - Updates [RequestInformation.urlTemplate] so that the same key is
///   replaced with the bracket form (e.g. `expand` → `expand[]`), ensuring
///   the final request URI is built correctly.
class StripeRequestAdapter extends DefaultRequestAdapter {
  StripeRequestAdapter({
    required super.authProvider,
    super.pNodeFactory,
    super.sWriterFactory,
    super.client,
  });

  /// Applies Stripe-style array query params: for each param whose value is a
  /// [List], the key becomes `key[]` in both [RequestInformation.queryParameters]
  /// and [RequestInformation.urlTemplate].
  void _applyStripeQueryParams(RequestInformation requestInfo) {
    final queryParameters = requestInfo.queryParameters;
    for (final entry in queryParameters.entries.toList()) {
      final key = entry.key;
      final value = entry.value;
      if (value is List && value.isNotEmpty) {
        queryParameters.remove(key);
        final stripeKey = key.endsWith('[]') ? key : '$key[]';
        queryParameters[stripeKey] = value;
        requestInfo.urlTemplate =
            requestInfo.urlTemplate?.replaceAll(key, stripeKey);
      }
    }
  }

  @override
  Future<T?> convertToNativeRequest<T>(RequestInformation requestInfo) async {
    _applyStripeQueryParams(requestInfo);
    return super.convertToNativeRequest<T>(requestInfo);
  }

  @override
  Future<ModelType?> send<ModelType extends Parsable>(
    RequestInformation requestInfo,
    ParsableFactory<ModelType> factory, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeQueryParams(requestInfo);
    return super.send(requestInfo, factory, errorMapping);
  }

  @override
  Future<Iterable<ModelType>?> sendCollection<ModelType extends Parsable>(
    RequestInformation requestInfo,
    ParsableFactory<ModelType> factory, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeQueryParams(requestInfo);
    return super.sendCollection(requestInfo, factory, errorMapping);
  }

  @override
  Future<void> sendNoContent(
    RequestInformation requestInfo, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeQueryParams(requestInfo);
    return super.sendNoContent(requestInfo, errorMapping);
  }

  @override
  Future<ModelType?> sendPrimitive<ModelType>(
    RequestInformation requestInfo, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeQueryParams(requestInfo);
    return super.sendPrimitive<ModelType>(requestInfo, errorMapping);
  }

  @override
  Future<Iterable<ModelType>?> sendPrimitiveCollection<ModelType>(
    RequestInformation requestInfo, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeQueryParams(requestInfo);
    return super.sendPrimitiveCollection<ModelType>(requestInfo, errorMapping);
  }
}
