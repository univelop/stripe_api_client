// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_revolut_pay_member1_capture_method.dart';
import './payment_intents_post_request_body_payment_method_options_revolut_pay_member1_setup_future_usage.dart';

/// auto generated
class PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The capture_method property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1CaptureMethod?
      captureMethod;

  ///  The setup_future_usage property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1SetupFutureUsage?
      setupFutureUsage;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1CaptureMethod>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1CaptureMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'setup_future_usage'] = (node) => setupFutureUsage = node.getEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1SetupFutureUsage>(
        (stringValue) =>
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1SetupFutureUsage
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
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1CaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPayMember1SetupFutureUsage>(
        'setup_future_usage', setupFutureUsage, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
