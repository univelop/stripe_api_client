// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './fabric_service_object.dart';

/// auto generated
/// A resource representing a fabric service integration.
class FabricService implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  String representing the object's type. Objects of the same type share the same value.
  FabricServiceObject? object;

  /// Instantiates a new [FabricService] and sets the default values.
  FabricService() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FabricService createFromDiscriminatorValue(ParseNode parseNode) {
    return FabricService();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<FabricServiceObject>((stringValue) =>
            FabricServiceObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<FabricServiceObject>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
