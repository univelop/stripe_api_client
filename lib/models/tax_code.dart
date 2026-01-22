// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_code_object.dart';

/// auto generated
/// [Tax codes](https://stripe.com/docs/tax/tax-categories) classify goods and services for tax purposes.
class TaxCode implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A detailed description of which types of products the tax code represents.
  String? description;

  ///  Unique identifier for the object.
  String? id;

  ///  A short name for the tax code.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  TaxCodeObject? object;

  /// Instantiates a new [TaxCode] and sets the default values.
  TaxCode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxCode createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxCode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<TaxCodeObject>((stringValue) => TaxCodeObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer.writeStringValue('id', id);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<TaxCodeObject>('object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
