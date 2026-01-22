// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceReceiverFlow implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
  String? address;

  ///  The total amount that was moved to your balance. This is almost always equal to the amount charged. In rare cases when customers deposit excess funds and we are unable to refund those, those funds get moved to your balance and show up in amount_charged as well. The amount charged is expressed in the source's currency.
  int? amountCharged;

  ///  The total amount received by the receiver source. `amount_received = amount_returned + amount_charged` should be true for consumed sources unless customers deposit excess funds. The amount received is expressed in the source's currency.
  int? amountReceived;

  ///  The total amount that was returned to the customer. The amount returned is expressed in the source's currency.
  int? amountReturned;

  ///  Type of refund attribute method, one of `email`, `manual`, or `none`.
  String? refundAttributesMethod;

  ///  Type of refund attribute status, one of `missing`, `requested`, or `available`.
  String? refundAttributesStatus;

  /// Instantiates a new [SourceReceiverFlow] and sets the default values.
  SourceReceiverFlow() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceReceiverFlow createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceReceiverFlow();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address = node.getStringValue();
    deserializerMap['amount_charged'] =
        (node) => amountCharged = node.getIntValue();
    deserializerMap['amount_received'] =
        (node) => amountReceived = node.getIntValue();
    deserializerMap['amount_returned'] =
        (node) => amountReturned = node.getIntValue();
    deserializerMap['refund_attributes_method'] =
        (node) => refundAttributesMethod = node.getStringValue();
    deserializerMap['refund_attributes_status'] =
        (node) => refundAttributesStatus = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('address', address);
    writer.writeIntValue('amount_charged', amountCharged);
    writer.writeIntValue('amount_received', amountReceived);
    writer.writeIntValue('amount_returned', amountReturned);
    writer.writeStringValue('refund_attributes_method', refundAttributesMethod);
    writer.writeStringValue('refund_attributes_status', refundAttributesStatus);
    writer.writeAdditionalData(additionalData);
  }
}
