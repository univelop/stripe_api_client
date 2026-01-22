// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_verifone_p400_splashscreen.dart';

/// auto generated
/// An object containing device type specific settings for Verifone P400 readers.
class ConfigurationsPostRequestBodyVerifoneP400
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The splashscreen property
  ConfigurationsPostRequestBodyVerifoneP400Splashscreen? splashscreen;

  /// Instantiates a new [ConfigurationsPostRequestBodyVerifoneP400] and sets the default values.
  ConfigurationsPostRequestBodyVerifoneP400() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyVerifoneP400 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfigurationsPostRequestBodyVerifoneP400();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['splashscreen'] = (node) => splashscreen = node
        .getObjectValue<ConfigurationsPostRequestBodyVerifoneP400Splashscreen>(
            ConfigurationsPostRequestBodyVerifoneP400Splashscreen
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyVerifoneP400Splashscreen>(
        'splashscreen', splashscreen);
    writer.writeAdditionalData(additionalData);
  }
}
