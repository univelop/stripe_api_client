// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_process_setup_config.dart';
import './terminal_reader_reader_resource_process_setup_intent_action_setup_intent.dart';

/// auto generated
/// Represents a reader action to process a setup intent
class TerminalReaderReaderResourceProcessSetupIntentAction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
  String? generatedCard;

  ///  Represents a per-setup override of a reader configuration
  TerminalReaderReaderResourceProcessSetupConfig? processConfig;

  ///  Most recent SetupIntent processed by the reader.
  TerminalReaderReaderResourceProcessSetupIntentActionSetupIntent? setupIntent;

  /// Instantiates a new [TerminalReaderReaderResourceProcessSetupIntentAction] and sets the default values.
  TerminalReaderReaderResourceProcessSetupIntentAction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceProcessSetupIntentAction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalReaderReaderResourceProcessSetupIntentAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['generated_card'] =
        (node) => generatedCard = node.getStringValue();
    deserializerMap['process_config'] = (node) => processConfig =
        node.getObjectValue<TerminalReaderReaderResourceProcessSetupConfig>(
            TerminalReaderReaderResourceProcessSetupConfig
                .createFromDiscriminatorValue);
    deserializerMap[
        'setup_intent'] = (node) => setupIntent = node.getObjectValue<
            TerminalReaderReaderResourceProcessSetupIntentActionSetupIntent>(
        TerminalReaderReaderResourceProcessSetupIntentActionSetupIntent
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('generated_card', generatedCard);
    writer.writeObjectValue<TerminalReaderReaderResourceProcessSetupConfig>(
        'process_config', processConfig);
    writer.writeObjectValue<
            TerminalReaderReaderResourceProcessSetupIntentActionSetupIntent>(
        'setup_intent', setupIntent);
    writer.writeAdditionalData(additionalData);
  }
}
