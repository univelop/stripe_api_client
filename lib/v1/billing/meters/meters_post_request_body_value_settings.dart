// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Fields that specify how to calculate a meter event's value.
class MetersPostRequestBodyValueSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The event_payload_key property
  String? eventPayloadKey;

  /// Instantiates a new [MetersPostRequestBodyValueSettings] and sets the default values.
  MetersPostRequestBodyValueSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MetersPostRequestBodyValueSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MetersPostRequestBodyValueSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['event_payload_key'] =
        (node) => eventPayloadKey = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('event_payload_key', eventPayloadKey);
    writer.writeAdditionalData(additionalData);
  }
}
