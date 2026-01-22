// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './collect_inputs_post_request_body_inputs_toggles_default_value.dart';

/// auto generated
class CollectInputsPostRequestBodyInputsToggles
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The default_value property
  CollectInputsPostRequestBodyInputsTogglesDefaultValue? defaultValue;

  ///  The description property
  String? description;

  ///  The title property
  String? title;

  /// Instantiates a new [CollectInputsPostRequestBodyInputsToggles] and sets the default values.
  CollectInputsPostRequestBodyInputsToggles() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CollectInputsPostRequestBodyInputsToggles createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CollectInputsPostRequestBodyInputsToggles();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_value'] = (node) => defaultValue = node
        .getEnumValue<CollectInputsPostRequestBodyInputsTogglesDefaultValue>(
            (stringValue) =>
                CollectInputsPostRequestBodyInputsTogglesDefaultValue.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['title'] = (node) => title = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeEnumValue<CollectInputsPostRequestBodyInputsTogglesDefaultValue>(
            'default_value', defaultValue, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeStringValue('title', title);
    writer.writeAdditionalData(additionalData);
  }
}
