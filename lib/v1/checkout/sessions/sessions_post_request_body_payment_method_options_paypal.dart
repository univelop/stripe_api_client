// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_paypal_capture_method.dart';
import './sessions_post_request_body_payment_method_options_paypal_preferred_locale.dart';
import './sessions_post_request_body_payment_method_options_paypal_setup_future_usage.dart';

/// auto generated
class SessionsPostRequestBodyPaymentMethodOptionsPaypal
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  SessionsPostRequestBodyPaymentMethodOptionsPaypalCaptureMethod? captureMethod;

  ///  The preferred_locale property
  SessionsPostRequestBodyPaymentMethodOptionsPaypalPreferredLocale?
      preferredLocale;

  ///  The reference property
  String? reference;

  ///  The risk_correlation_id property
  String? riskCorrelationId;

  ///  The setup_future_usage property
  SessionsPostRequestBodyPaymentMethodOptionsPaypalSetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptionsPaypal] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptionsPaypal() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptionsPaypal
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptionsPaypal();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['capture_method'] = (node) => captureMethod =
        node.getEnumValue<
                SessionsPostRequestBodyPaymentMethodOptionsPaypalCaptureMethod>(
            (stringValue) =>
                SessionsPostRequestBodyPaymentMethodOptionsPaypalCaptureMethod
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaypalPreferredLocale>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsPaypalPreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['risk_correlation_id'] =
        (node) => riskCorrelationId = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaypalSetupFutureUsage>(
        (stringValue) =>
            SessionsPostRequestBodyPaymentMethodOptionsPaypalSetupFutureUsage
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaypalCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaypalPreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('risk_correlation_id', riskCorrelationId);
    writer.writeEnumValue<
            SessionsPostRequestBodyPaymentMethodOptionsPaypalSetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
