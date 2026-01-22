// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_choice.dart';

/// auto generated
/// Information about a selection being collected using a reader
class TerminalReaderReaderResourceSelection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  List of possible choices to be selected
  Iterable<TerminalReaderReaderResourceChoice>? choices;

  ///  The id of the selected choice
  String? id;

  ///  The text of the selected choice
  String? text;

  /// Instantiates a new [TerminalReaderReaderResourceSelection] and sets the default values.
  TerminalReaderReaderResourceSelection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceSelection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceSelection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['choices'] = (node) => choices =
        node.getCollectionOfObjectValues<TerminalReaderReaderResourceChoice>(
            TerminalReaderReaderResourceChoice.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['text'] = (node) => text = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<TerminalReaderReaderResourceChoice>(
        'choices', choices);
    writer.writeStringValue('id', id);
    writer.writeStringValue('text', text);
    writer.writeAdditionalData(additionalData);
  }
}
