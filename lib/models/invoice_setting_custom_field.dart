// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class InvoiceSettingCustomField implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The name of the custom field.
  String? name;

  ///  The value of the custom field.
  String? value;

  /// Instantiates a new [InvoiceSettingCustomField] and sets the default values.
  InvoiceSettingCustomField() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceSettingCustomField createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceSettingCustomField();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['value'] = (node) => value = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('name', name);
    writer.writeStringValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
