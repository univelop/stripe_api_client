// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_cart.dart';
import './terminal_reader_reader_resource_set_reader_display_action_type.dart';

/// auto generated
/// Represents a reader action to set the reader display
class TerminalReaderReaderResourceSetReaderDisplayAction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Cart object to be displayed by the reader, including line items, amounts, and currency.
  TerminalReaderReaderResourceCart? cart;

  ///  Type of information to be displayed by the reader. Only `cart` is currently supported.
  TerminalReaderReaderResourceSetReaderDisplayActionType? type_;

  /// Instantiates a new [TerminalReaderReaderResourceSetReaderDisplayAction] and sets the default values.
  TerminalReaderReaderResourceSetReaderDisplayAction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceSetReaderDisplayAction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalReaderReaderResourceSetReaderDisplayAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cart'] = (node) => cart =
        node.getObjectValue<TerminalReaderReaderResourceCart>(
            TerminalReaderReaderResourceCart.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<TerminalReaderReaderResourceSetReaderDisplayActionType>(
            (stringValue) =>
                TerminalReaderReaderResourceSetReaderDisplayActionType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalReaderReaderResourceCart>('cart', cart);
    writer
        .writeEnumValue<TerminalReaderReaderResourceSetReaderDisplayActionType>(
            'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
