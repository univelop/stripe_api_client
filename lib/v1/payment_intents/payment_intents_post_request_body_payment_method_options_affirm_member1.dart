// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_affirm_member1_capture_method.dart';
import './payment_intents_post_request_body_payment_method_options_affirm_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1CaptureMethod?
      captureMethod;

  ///  The preferred_locale property
  String? preferredLocale;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1CaptureMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['preferred_locale'] =
        (node) => preferredLocale = node.getStringValue();
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1SetupFutureUsage
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeStringValue('preferred_locale', preferredLocale);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirmMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
