// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './application_object.dart';

/// auto generated
class Application implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Unique identifier for the object.
  String? id;

  ///  The name of the application.
  String? name;

  ///  String representing the object's type. Objects of the same type share the same value.
  ApplicationObject? object;

  /// Instantiates a new [Application] and sets the default values.
  Application() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Application createFromDiscriminatorValue(ParseNode parseNode) {
    return Application();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<ApplicationObject>((stringValue) => ApplicationObject
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeStringValue('name', name);
    writer.writeEnumValue<ApplicationObject>('object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
