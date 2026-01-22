// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './deleted_account_object.dart';

/// auto generated
class DeletedAccount implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Always true for a deleted object
  bool? deleted;

  ///  Unique identifier for the object.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  DeletedAccountObject? object;

  /// Instantiates a new [DeletedAccount] and sets the default values.
  DeletedAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DeletedAccount createFromDiscriminatorValue(ParseNode parseNode) {
    return DeletedAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<DeletedAccountObject>((stringValue) =>
            DeletedAccountObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('deleted', value: deleted);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<DeletedAccountObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
