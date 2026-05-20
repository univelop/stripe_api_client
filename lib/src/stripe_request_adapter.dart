import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:microsoft_kiota_bundle/microsoft_kiota_bundle.dart';

import 'stripe_form_serialization_writer.dart';

/// Request adapter that formats query parameters and request bodies for the
/// Stripe API.
///
/// Stripe expects array query parameters with bracket notation, e.g.
/// `expand[]=discounts` instead of `expand=discounts`. This adapter
/// overrides the send methods and, before delegating:
/// - Mutates [RequestInformation.queryParameters] so that any parameter
///   whose value is a [List] uses the key with a `[]` suffix.
/// - Updates [RequestInformation.urlTemplate] so that the same key is
///   replaced with the bracket form (e.g. `expand` → `expand[]`), ensuring
///   the final request URI is built correctly.
/// - Replaces the [StripeFormSerializationWriter.emptyValue] sentinel in the
///   request body with truly empty values (`key=`), which Stripe uses to
///   unset fields.
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

  /// Replaces the [StripeFormSerializationWriter.emptyValue] sentinel in the
  /// request body with truly empty values (`key=`).
  ///
  /// Stripe uses empty form values to unset fields (e.g.
  /// `invoice_settings[custom_fields]=`). The base Kiota form serializer
  /// skips empty strings, so the sentinel is written as a non-empty
  /// placeholder and replaced here before the request is sent.
  void _applyStripeEmptyValues(RequestInformation requestInfo) {
    final content = requestInfo.content;
    if (content == null || content.isEmpty) return;

    final body = utf8.decode(content);
    final sentinel = '=${StripeFormSerializationWriter.encodedEmptyValue}';
    if (!body.contains(sentinel)) return;

    requestInfo.content =
        Uint8List.fromList(utf8.encode(body.replaceAll(sentinel, '=')));
  }

  /// Applies all Stripe-specific request fixups.
  void _applyStripeFixups(RequestInformation requestInfo) {
    _applyStripeQueryParams(requestInfo);
    _applyStripeEmptyValues(requestInfo);
  }

  /// Sends [requestInfo] and returns the raw [http.StreamedResponse] without
  /// deserializing the body. Stripe query params and authentication are applied.
  ///
  /// This is a last-resort option when the normal typed [send] methods fail
  /// because the response shape no longer matches the generated models. For
  /// example, when using Stripe's expand parameter, expanded fields return
  /// full objects (e.g. discounts as objects instead of ID strings), which
  /// can make the response unparsable by the default deserializers. Use
  /// [sendRaw] to perform the request anyway and then parse the response
  /// yourself (e.g. with `dart:convert`) or parse only the subparts you need.
  ///
  /// See <https://stripe.com/docs/api/expanding_objects> for Stripe's expand
  /// parameter.
  ///
  /// For connection reuse, pass the same [client] you use when creating the
  /// adapter; if omitted, a new client is used for this call.
  Future<http.StreamedResponse> sendRaw(
    RequestInformation requestInfo, {
    http.Client? client,
  }) async {
    _applyStripeFixups(requestInfo);
    requestInfo.pathParameters['baseurl'] = baseUrl;
    final request = await convertToNativeRequest<http.Request>(requestInfo);
    if (request == null) {
      throw StateError('convertToNativeRequest returned null');
    }
    return (client ?? http.Client()).send(request);
  }

  @override
  Future<T?> convertToNativeRequest<T>(RequestInformation requestInfo) async {
    _applyStripeFixups(requestInfo);
    return super.convertToNativeRequest<T>(requestInfo);
  }

  @override
  Future<ModelType?> send<ModelType extends Parsable>(
    RequestInformation requestInfo,
    ParsableFactory<ModelType> factory, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeFixups(requestInfo);
    return super.send(requestInfo, factory, errorMapping);
  }

  @override
  Future<Iterable<ModelType>?> sendCollection<ModelType extends Parsable>(
    RequestInformation requestInfo,
    ParsableFactory<ModelType> factory, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeFixups(requestInfo);
    return super.sendCollection(requestInfo, factory, errorMapping);
  }

  @override
  Future<void> sendNoContent(
    RequestInformation requestInfo, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeFixups(requestInfo);
    return super.sendNoContent(requestInfo, errorMapping);
  }

  @override
  Future<ModelType?> sendPrimitive<ModelType>(
    RequestInformation requestInfo, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeFixups(requestInfo);
    return super.sendPrimitive<ModelType>(requestInfo, errorMapping);
  }

  @override
  Future<Iterable<ModelType>?> sendPrimitiveCollection<ModelType>(
    RequestInformation requestInfo, [
    ErrorMappings? errorMapping,
  ]) async {
    _applyStripeFixups(requestInfo);
    return super.sendPrimitiveCollection<ModelType>(requestInfo, errorMapping);
  }
}
