// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './value_list_item_object.dart';

/// auto generated
/// Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.Related guide: [Managing list items](https://docs.stripe.com/radar/lists#managing-list-items)
class ValueListItem implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The name or email address of the user who added this item to the value list.
  String? createdBy;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  ValueListItemObject? object;

  ///  The value of the item.
  String? value;

  ///  The identifier of the value list this item belongs to.
  String? valueList;

  /// Instantiates a new [ValueListItem] and sets the default values.
  ValueListItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ValueListItem createFromDiscriminatorValue(ParseNode parseNode) {
    return ValueListItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['created_by'] = (node) => createdBy = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ValueListItemObject>((stringValue) =>
            ValueListItemObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['value'] = (node) => value = node.getStringValue();
    deserializerMap['value_list'] = (node) => valueList = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('created_by', createdBy);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<ValueListItemObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('value', value);
    writer.writeStringValue('value_list', valueList);
    writer.writeAdditionalData(additionalData);
  }
}
