// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_paypal_member1_capture_method.dart';
import './payment_intents_post_request_body_payment_method_options_paypal_member1_preferred_locale.dart';
import './payment_intents_post_request_body_payment_method_options_paypal_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod?
      captureMethod;

  ///  The preferred_locale property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale?
      preferredLocale;

  ///  The reference property
  String? reference;

  ///  The risk_correlation_id property
  String? riskCorrelationId;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['risk_correlation_id'] =
        (node) => riskCorrelationId = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('risk_correlation_id', riskCorrelationId);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
