// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_setup_intent_data_metadata.dart';

/// auto generated
/// A subset of parameters to be passed to SetupIntent creation for Checkout Sessions in `setup` mode.
class SessionsPostRequestBodySetupIntentData
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The description property
  String? description;

  ///  The metadata property
  SessionsPostRequestBodySetupIntentDataMetadata? metadata;

  ///  The on_behalf_of property
  String? onBehalfOf;

  /// Instantiates a new [SessionsPostRequestBodySetupIntentData] and sets the default values.
  SessionsPostRequestBodySetupIntentData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodySetupIntentData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodySetupIntentData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SessionsPostRequestBodySetupIntentDataMetadata>(
            SessionsPostRequestBodySetupIntentDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer.writeObjectValue<SessionsPostRequestBodySetupIntentDataMetadata>(
        'metadata', metadata);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeAdditionalData(additionalData);
  }
}
