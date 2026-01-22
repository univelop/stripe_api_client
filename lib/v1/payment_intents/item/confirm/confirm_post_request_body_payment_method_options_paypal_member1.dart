// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_paypal_member1_capture_method.dart';
import './confirm_post_request_body_payment_method_options_paypal_member1_preferred_locale.dart';
import './confirm_post_request_body_payment_method_options_paypal_member1_setup_future_usage.dart';

/// auto generated
class ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod?
      captureMethod;

  ///  The preferred_locale property
  ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale?
      preferredLocale;

  ///  The reference property
  String? reference;

  ///  The risk_correlation_id property
  String? riskCorrelationId;

  ///  The setup_future_usage property
  ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'preferred_locale'] = (node) => preferredLocale = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['risk_correlation_id'] =
        (node) => riskCorrelationId = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage>(
        (stringValue) =>
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage
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
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1PreferredLocale>(
        'preferred_locale', preferredLocale, (e) => e?.value);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue('risk_correlation_id', riskCorrelationId);
    writer.writeEnumValue<
            ConfirmPostRequestBodyPaymentMethodOptionsPaypalMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
