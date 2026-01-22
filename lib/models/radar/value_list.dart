// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './value_list_item_type.dart';
import './value_list_list_items.dart';
import './value_list_metadata.dart';
import './value_list_object.dart';

/// auto generated
/// Value lists allow you to group values together which can then be referenced in rules.Related guide: [Default Stripe lists](https://docs.stripe.com/radar/lists#managing-list-items)
class ValueList implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The name of the value list for use in rules.
  String? alias;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The name or email address of the user who created this value list.
  String? createdBy;

  ///  Unique identifier for the object.
  String? id;

  ///  The type of items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, `customer_id`, `sepa_debit_fingerprint`, or `us_bank_account_fingerprint`.
  ValueListItemType? itemType;

  ///  List of items contained within this value list.
  ValueListListItems? listItems;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  ValueListMetadata? metadata;

  ///  The name of the value list.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  ValueListObject? object;

  /// Instantiates a new [ValueList] and sets the default values.
  ValueList() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ValueList createFromDiscriminatorValue(ParseNode parseNode) {
    return ValueList();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alias'] = (node) => alias = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['created_by'] = (node) => createdBy = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['item_type'] = (node) => itemType =
        node.getEnumValue<ValueListItemType>((stringValue) => ValueListItemType
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['list_items'] = (node) => listItems =
        node.getObjectValue<ValueListListItems>(
            ValueListListItems.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ValueListMetadata>(
            ValueListMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<ValueListObject>((stringValue) => ValueListObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('alias', alias);
    writer.writeIntValue('created', created);
    writer.writeStringValue('created_by', createdBy);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<ValueListItemType>(
        'item_type', itemType, (e) => e?.value);
    writer.writeObjectValue<ValueListListItems>('list_items', listItems);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<ValueListMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<ValueListObject>('object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
