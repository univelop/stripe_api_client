// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PaymentFlowsPrivatePaymentMethodsAlipayDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
  String? buyerId;

  ///  Uniquely identifies this particular Alipay account. You can use this attribute to check whether two Alipay accounts are the same.
  String? fingerprint;

  ///  Transaction ID of this particular Alipay transaction.
  String? transactionId;

  /// Instantiates a new [PaymentFlowsPrivatePaymentMethodsAlipayDetails] and sets the default values.
  PaymentFlowsPrivatePaymentMethodsAlipayDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentFlowsPrivatePaymentMethodsAlipayDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentFlowsPrivatePaymentMethodsAlipayDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['buyer_id'] = (node) => buyerId = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['transaction_id'] =
        (node) => transactionId = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('buyer_id', buyerId);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('transaction_id', transactionId);
    writer.writeAdditionalData(additionalData);
  }
}
