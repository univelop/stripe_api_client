// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Represents a line item to be displayed on the reader
class TerminalReaderReaderResourceLineItem
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount of the line item. A positive integer in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  Description of the line item.
  String? description;

  ///  The quantity of the line item.
  int? quantity;

  /// Instantiates a new [TerminalReaderReaderResourceLineItem] and sets the default values.
  TerminalReaderReaderResourceLineItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceLineItem createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceLineItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('description', description);
    writer.writeIntValue('quantity', quantity);
    writer.writeAdditionalData(additionalData);
  }
}
