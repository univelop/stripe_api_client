// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './deleted_product_object.dart';

/// auto generated
class DeletedProduct implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Always true for a deleted object
  bool? deleted;

  ///  Unique identifier for the object.
  String? id;

  ///  String representing the object's type. Objects of the same type share the same value.
  DeletedProductObject? object;

  /// Instantiates a new [DeletedProduct] and sets the default values.
  DeletedProduct() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DeletedProduct createFromDiscriminatorValue(ParseNode parseNode) {
    return DeletedProduct();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<DeletedProductObject>((stringValue) =>
            DeletedProductObject.values
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
    writer.writeEnumValue<DeletedProductObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
