// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceOrderItem implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount (price) for this order item.
  int? amount;

  ///  This currency of this order item. Required when `amount` is present.
  String? currency;

  ///  Human-readable description for this order item.
  String? description;

  ///  The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
  String? parent;

  ///  The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
  int? quantity;

  ///  The type of this order item. Must be `sku`, `tax`, or `shipping`.
  String? type_;

  /// Instantiates a new [SourceOrderItem] and sets the default values.
  SourceOrderItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceOrderItem createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceOrderItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['parent'] = (node) => parent = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeStringValue('parent', parent);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
