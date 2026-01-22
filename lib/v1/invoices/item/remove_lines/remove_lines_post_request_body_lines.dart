// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './remove_lines_post_request_body_lines_behavior.dart';

/// auto generated
class RemoveLinesPostRequestBodyLines
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The behavior property
  RemoveLinesPostRequestBodyLinesBehavior? behavior;

  ///  The id property
  String? id;

  /// Instantiates a new [RemoveLinesPostRequestBodyLines] and sets the default values.
  RemoveLinesPostRequestBodyLines() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RemoveLinesPostRequestBodyLines createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RemoveLinesPostRequestBodyLines();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['behavior'] = (node) => behavior =
        node.getEnumValue<RemoveLinesPostRequestBodyLinesBehavior>(
            (stringValue) => RemoveLinesPostRequestBodyLinesBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<RemoveLinesPostRequestBodyLinesBehavior>(
        'behavior', behavior, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeAdditionalData(additionalData);
  }
}
