// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_bbpos_wisepad3_member1_splashscreen.dart';

/// auto generated
class WithConfigurationPostRequestBodyBbposWisepad3Member1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The splashscreen property
  WithConfigurationPostRequestBodyBbposWisepad3Member1Splashscreen?
      splashscreen;

  /// Instantiates a new [WithConfigurationPostRequestBodyBbposWisepad3Member1] and sets the default values.
  WithConfigurationPostRequestBodyBbposWisepad3Member1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyBbposWisepad3Member1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyBbposWisepad3Member1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'splashscreen'] = (node) => splashscreen = node.getObjectValue<
            WithConfigurationPostRequestBodyBbposWisepad3Member1Splashscreen>(
        WithConfigurationPostRequestBodyBbposWisepad3Member1Splashscreen
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBbposWisepad3Member1Splashscreen>(
        'splashscreen', splashscreen);
    writer.writeAdditionalData(additionalData);
  }
}
