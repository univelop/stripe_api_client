// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CollectInputsPostRequestBodyInputsCustomText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The description property
  String? description;

  ///  The skip_button property
  String? skipButton;

  ///  The submit_button property
  String? submitButton;

  ///  The title property
  String? title;

  /// Instantiates a new [CollectInputsPostRequestBodyInputsCustomText] and sets the default values.
  CollectInputsPostRequestBodyInputsCustomText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CollectInputsPostRequestBodyInputsCustomText
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CollectInputsPostRequestBodyInputsCustomText();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['skip_button'] =
        (node) => skipButton = node.getStringValue();
    deserializerMap['submit_button'] =
        (node) => submitButton = node.getStringValue();
    deserializerMap['title'] = (node) => title = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('description', description);
    writer.writeStringValue('skip_button', skipButton);
    writer.writeStringValue('submit_button', submitButton);
    writer.writeStringValue('title', title);
    writer.writeAdditionalData(additionalData);
  }
}
