// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_custom_text.dart';
import './terminal_reader_reader_resource_email.dart';
import './terminal_reader_reader_resource_input_type.dart';
import './terminal_reader_reader_resource_numeric.dart';
import './terminal_reader_reader_resource_phone.dart';
import './terminal_reader_reader_resource_selection.dart';
import './terminal_reader_reader_resource_signature.dart';
import './terminal_reader_reader_resource_text.dart';
import './terminal_reader_reader_resource_toggle.dart';

/// auto generated
/// Represents an input to be collected using the reader
class TerminalReaderReaderResourceInput
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Default text of input being collected.
  TerminalReaderReaderResourceCustomText? customText;

  ///  Information about a email being collected using a reader
  TerminalReaderReaderResourceEmail? email;

  ///  Information about a number being collected using a reader
  TerminalReaderReaderResourceNumeric? numeric;

  ///  Information about a phone number being collected using a reader
  TerminalReaderReaderResourcePhone? phone;

  ///  Indicate that this input is required, disabling the skip button.
  bool? required_;

  ///  Information about a selection being collected using a reader
  TerminalReaderReaderResourceSelection? selection;

  ///  Information about a signature being collected using a reader
  TerminalReaderReaderResourceSignature? signature;

  ///  Indicate that this input was skipped by the user.
  bool? skipped;

  ///  Information about text being collected using a reader
  TerminalReaderReaderResourceText? text;

  ///  List of toggles being collected. Values are present if collection is complete.
  Iterable<TerminalReaderReaderResourceToggle>? toggles;

  ///  Type of input being collected.
  TerminalReaderReaderResourceInputType? type_;

  /// Instantiates a new [TerminalReaderReaderResourceInput] and sets the default values.
  TerminalReaderReaderResourceInput() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceInput createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceInput();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_text'] = (node) => customText = node.getObjectValue<
            TerminalReaderReaderResourceCustomText>(
        TerminalReaderReaderResourceCustomText.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email =
        node.getObjectValue<TerminalReaderReaderResourceEmail>(
            TerminalReaderReaderResourceEmail.createFromDiscriminatorValue);
    deserializerMap['numeric'] = (node) => numeric =
        node.getObjectValue<TerminalReaderReaderResourceNumeric>(
            TerminalReaderReaderResourceNumeric.createFromDiscriminatorValue);
    deserializerMap['phone'] = (node) => phone =
        node.getObjectValue<TerminalReaderReaderResourcePhone>(
            TerminalReaderReaderResourcePhone.createFromDiscriminatorValue);
    deserializerMap['required'] = (node) => required_ = node.getBoolValue();
    deserializerMap['selection'] = (node) => selection =
        node.getObjectValue<TerminalReaderReaderResourceSelection>(
            TerminalReaderReaderResourceSelection.createFromDiscriminatorValue);
    deserializerMap['signature'] = (node) => signature =
        node.getObjectValue<TerminalReaderReaderResourceSignature>(
            TerminalReaderReaderResourceSignature.createFromDiscriminatorValue);
    deserializerMap['skipped'] = (node) => skipped = node.getBoolValue();
    deserializerMap['text'] = (node) => text =
        node.getObjectValue<TerminalReaderReaderResourceText>(
            TerminalReaderReaderResourceText.createFromDiscriminatorValue);
    deserializerMap['toggles'] = (node) => toggles =
        node.getCollectionOfObjectValues<TerminalReaderReaderResourceToggle>(
            TerminalReaderReaderResourceToggle.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<TerminalReaderReaderResourceInputType>(
            (stringValue) => TerminalReaderReaderResourceInputType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalReaderReaderResourceCustomText>(
        'custom_text', customText);
    writer.writeObjectValue<TerminalReaderReaderResourceEmail>('email', email);
    writer.writeObjectValue<TerminalReaderReaderResourceNumeric>(
        'numeric', numeric);
    writer.writeObjectValue<TerminalReaderReaderResourcePhone>('phone', phone);
    writer.writeBoolValue('required', value: required_);
    writer.writeObjectValue<TerminalReaderReaderResourceSelection>(
        'selection', selection);
    writer.writeObjectValue<TerminalReaderReaderResourceSignature>(
        'signature', signature);
    writer.writeBoolValue('skipped', value: skipped);
    writer.writeObjectValue<TerminalReaderReaderResourceText>('text', text);
    writer.writeCollectionOfObjectValues<TerminalReaderReaderResourceToggle>(
        'toggles', toggles);
    writer.writeEnumValue<TerminalReaderReaderResourceInputType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
