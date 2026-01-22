// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_bbpos_wisepos_e_member1_splashscreen.dart';

/// auto generated
class WithConfigurationPostRequestBodyBbposWiseposEMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The splashscreen property
  WithConfigurationPostRequestBodyBbposWiseposEMember1Splashscreen?
      splashscreen;

  /// Instantiates a new [WithConfigurationPostRequestBodyBbposWiseposEMember1] and sets the default values.
  WithConfigurationPostRequestBodyBbposWiseposEMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyBbposWiseposEMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyBbposWiseposEMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'splashscreen'] = (node) => splashscreen = node.getObjectValue<
            WithConfigurationPostRequestBodyBbposWiseposEMember1Splashscreen>(
        WithConfigurationPostRequestBodyBbposWiseposEMember1Splashscreen
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyBbposWiseposEMember1Splashscreen>(
        'splashscreen', splashscreen);
    writer.writeAdditionalData(additionalData);
  }
}
