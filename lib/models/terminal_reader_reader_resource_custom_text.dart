// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Represents custom text to be displayed when collecting the input using a reader
class TerminalReaderReaderResourceCustomText
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Customize the default description for this input
  String? description;

  ///  Customize the default label for this input's skip button
  String? skipButton;

  ///  Customize the default label for this input's submit button
  String? submitButton;

  ///  Customize the default title for this input
  String? title;

  /// Instantiates a new [TerminalReaderReaderResourceCustomText] and sets the default values.
  TerminalReaderReaderResourceCustomText() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceCustomText createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceCustomText();
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
