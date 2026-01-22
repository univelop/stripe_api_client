// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentFlowsPaymentDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A unique value to identify the customer. This field is available only for card payments.This field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks.
  String? customerReference;

  ///  A unique value assigned by the business to identify the transaction. Required for L2 and L3 rates.Required when the Payment Method Types array contains `card`, including when [automatic_payment_methods.enabled](/api/payment_intents/create#create_payment_intent-automatic_payment_methods-enabled) is set to `true`.For Cards, this field is truncated to 25 alphanumeric characters, excluding spaces, before being sent to card networks. For Klarna, this field is truncated to 255 characters and is visible to customers when they view the order in the Klarna app.
  String? orderReference;

  /// Instantiates a new [PaymentFlowsPaymentDetails] and sets the default values.
  PaymentFlowsPaymentDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPaymentDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentFlowsPaymentDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_reference'] =
        (node) => customerReference = node.getStringValue();
    deserializerMap['order_reference'] =
        (node) => orderReference = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('customer_reference', customerReference);
    writer.writeStringValue('order_reference', orderReference);
    writer.writeAdditionalData(additionalData);
  }
}
