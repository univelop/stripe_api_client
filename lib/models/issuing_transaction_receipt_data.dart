// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class IssuingTransactionReceiptData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The description of the item. The maximum length of this field is 26 characters.
  String? description;

  ///  The quantity of the item.
  double? quantity;

  ///  The total for this line item in cents.
  int? total;

  ///  The unit cost of the item in cents.
  int? unitCost;

  /// Instantiates a new [IssuingTransactionReceiptData] and sets the default values.
  IssuingTransactionReceiptData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingTransactionReceiptData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingTransactionReceiptData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getDoubleValue();
    deserializerMap['total'] = (node) => total = node.getIntValue();
    deserializerMap['unit_cost'] = (node) => unitCost = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer.writeDoubleValue('quantity', quantity);
    writer.writeIntValue('total', total);
    writer.writeIntValue('unit_cost', unitCost);
    writer.writeAdditionalData(additionalData);
  }
}
