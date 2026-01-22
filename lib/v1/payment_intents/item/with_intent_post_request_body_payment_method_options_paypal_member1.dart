// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_paypal_member1_capture_method.dart';
import './with_intent_post_request_body_payment_method_options_paypal_member1_preferred_locale.dart';
import './with_intent_post_request_body_payment_method_options_paypal_member1_setup_future_usage.dart';

/// auto generated
class WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod?
      captureMethod;

  ///  The preferred_locale property
  WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale?
      preferredLocale;

  ///  The reference property
  String? reference;

  ///  The risk_correlation_id property
  String? riskCorrelationId;

  ///  The setup_future_usage property
  WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['risk_correlation_id'] =
        (node) => riskCorrelationId = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage>(
        (stringValue) =>
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage
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
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('risk_correlation_id', riskCorrelationId);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
