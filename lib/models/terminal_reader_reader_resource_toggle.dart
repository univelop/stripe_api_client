// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_toggle_default_value.dart';
import './terminal_reader_reader_resource_toggle_value.dart';

/// auto generated
/// Information about an input's toggle
class TerminalReaderReaderResourceToggle
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The toggle's default value. Can be `enabled` or `disabled`.
  TerminalReaderReaderResourceToggleDefaultValue? defaultValue;

  ///  The toggle's description text. Maximum 50 characters.
  String? description;

  ///  The toggle's title text. Maximum 50 characters.
  String? title;

  ///  The toggle's collected value. Can be `enabled` or `disabled`.
  TerminalReaderReaderResourceToggleValue? value;

  /// Instantiates a new [TerminalReaderReaderResourceToggle] and sets the default values.
  TerminalReaderReaderResourceToggle() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceToggle createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceToggle();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_value'] = (node) => defaultValue =
        node.getEnumValue<TerminalReaderReaderResourceToggleDefaultValue>(
            (stringValue) => TerminalReaderReaderResourceToggleDefaultValue
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['title'] = (node) => title = node.getStringValue();
    deserializerMap['value'] = (node) => value =
        node.getEnumValue<TerminalReaderReaderResourceToggleValue>(
            (stringValue) => TerminalReaderReaderResourceToggleValue.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<TerminalReaderReaderResourceToggleDefaultValue>(
        'default_value', defaultValue, (e) => e?.value);
    writer.writeStringValue('description', description);
    writer.writeStringValue('title', title);
    writer.writeEnumValue<TerminalReaderReaderResourceToggleValue>(
        'value', value, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
