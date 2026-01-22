// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_configuration_configuration_resource_device_type_specific_config_splashscreen.dart';

/// auto generated
class TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A File ID representing an image to display on the reader
  TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen?
      splashscreen;

  /// Instantiates a new [TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig] and sets the default values.
  TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'splashscreen'] = (node) => splashscreen = node.getObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen>(
        TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TerminalConfigurationConfigurationResourceDeviceTypeSpecificConfigSplashscreen>(
        'splashscreen', splashscreen);
    writer.writeAdditionalData(additionalData);
  }
}
