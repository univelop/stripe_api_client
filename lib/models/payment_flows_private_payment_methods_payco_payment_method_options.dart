// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_payco_payment_method_options_capture_method.dart';

/// auto generated
class PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Controls when the funds will be captured from the customer's account.
  PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod?
      captureMethod;

  /// Instantiates a new [PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions] and sets the default values.
  PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'capture_method'] = (node) => captureMethod = node.getEnumValue<
            PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod>(
        (stringValue) =>
            PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod
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
            PaymentFlowsPrivatePaymentMethodsPaycoPaymentMethodOptionsCaptureMethod>(
        'capture_method', captureMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
