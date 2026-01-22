// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_bbpos_wisepad3_splashscreen.dart';

/// auto generated
/// An object containing device type specific settings for BBPOS WisePad 3 readers.
class ConfigurationsPostRequestBodyBbposWisepad3
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The splashscreen property
  ConfigurationsPostRequestBodyBbposWisepad3Splashscreen? splashscreen;

  /// Instantiates a new [ConfigurationsPostRequestBodyBbposWisepad3] and sets the default values.
  ConfigurationsPostRequestBodyBbposWisepad3() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyBbposWisepad3
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyBbposWisepad3();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['splashscreen'] = (node) => splashscreen = node
        .getObjectValue<ConfigurationsPostRequestBodyBbposWisepad3Splashscreen>(
            ConfigurationsPostRequestBodyBbposWisepad3Splashscreen
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyBbposWisepad3Splashscreen>(
        'splashscreen', splashscreen);
    writer.writeAdditionalData(additionalData);
  }
}
