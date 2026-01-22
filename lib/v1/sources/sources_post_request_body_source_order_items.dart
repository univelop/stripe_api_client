// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sources_post_request_body_source_order_items_type.dart';

/// auto generated
class SourcesPostRequestBodySourceOrderItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount property
  int? amount;

  ///  The currency property
  String? currency;

  ///  The description property
  String? description;

  ///  The parent property
  String? parent;

  ///  The quantity property
  int? quantity;

  ///  The type property
  SourcesPostRequestBodySourceOrderItemsType? type_;

  /// Instantiates a new [SourcesPostRequestBodySourceOrderItems] and sets the default values.
  SourcesPostRequestBodySourceOrderItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBodySourceOrderItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourcesPostRequestBodySourceOrderItems();
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
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SourcesPostRequestBodySourceOrderItemsType>(
            (stringValue) => SourcesPostRequestBodySourceOrderItemsType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
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
    writer.writeEnumValue<SourcesPostRequestBodySourceOrderItemsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
