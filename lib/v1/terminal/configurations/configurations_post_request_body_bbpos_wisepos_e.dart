// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_bbpos_wisepos_e_splashscreen.dart';

/// auto generated
/// An object containing device type specific settings for BBPOS WisePOS E readers.
class ConfigurationsPostRequestBodyBbposWiseposE
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The splashscreen property
  ConfigurationsPostRequestBodyBbposWiseposESplashscreen? splashscreen;

  /// Instantiates a new [ConfigurationsPostRequestBodyBbposWiseposE] and sets the default values.
  ConfigurationsPostRequestBodyBbposWiseposE() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyBbposWiseposE
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyBbposWiseposE();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['splashscreen'] = (node) => splashscreen = node
        .getObjectValue<ConfigurationsPostRequestBodyBbposWiseposESplashscreen>(
            ConfigurationsPostRequestBodyBbposWiseposESplashscreen
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfigurationsPostRequestBodyBbposWiseposESplashscreen>(
        'splashscreen', splashscreen);
    writer.writeAdditionalData(additionalData);
  }
}
