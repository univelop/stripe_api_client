// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_choice_style.dart';

/// auto generated
/// Choice to be selected on a Reader
class TerminalReaderReaderResourceChoice
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The identifier for the selected choice. Maximum 50 characters.
  String? id;

  ///  The button style for the choice. Can be `primary` or `secondary`.
  TerminalReaderReaderResourceChoiceStyle? style;

  ///  The text to be selected. Maximum 30 characters.
  String? text;

  /// Instantiates a new [TerminalReaderReaderResourceChoice] and sets the default values.
  TerminalReaderReaderResourceChoice() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceChoice createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceChoice();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['style'] = (node) => style =
        node.getEnumValue<TerminalReaderReaderResourceChoiceStyle>(
            (stringValue) => TerminalReaderReaderResourceChoiceStyle.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['text'] = (node) => text = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeEnumValue<TerminalReaderReaderResourceChoiceStyle>(
        'style', style, (e) => e?.value);
    writer.writeStringValue('text', text);
    writer.writeAdditionalData(additionalData);
  }
}
