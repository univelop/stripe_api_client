// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_samsung_pay_payment_method_options_capture_method.dart';

/// auto generated
class PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod?
      captureMethod;

  /// Instantiates a new [PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions] and sets the default values.
  PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod>(
        (stringValue) =>
            PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod
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
            PaymentFlowsPrivatePaymentMethodsSamsungPayPaymentMethodOptionsCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
