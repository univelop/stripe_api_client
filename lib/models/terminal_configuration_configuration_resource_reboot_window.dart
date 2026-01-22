// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class TerminalConfigurationConfigurationResourceRebootWindow
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Integer between 0 to 23 that represents the end hour of the reboot time window. The value must be different than the start_hour.
  int? endHour;

  ///  Integer between 0 to 23 that represents the start hour of the reboot time window.
  int? startHour;

  /// Instantiates a new [TerminalConfigurationConfigurationResourceRebootWindow] and sets the default values.
  TerminalConfigurationConfigurationResourceRebootWindow()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalConfigurationConfigurationResourceRebootWindow
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalConfigurationConfigurationResourceRebootWindow();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['end_hour'] = (node) => endHour = node.getIntValue();
    deserializerMap['start_hour'] = (node) => startHour = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('end_hour', endHour);
    writer.writeIntValue('start_hour', startHour);
    writer.writeAdditionalData(additionalData);
  }
}
