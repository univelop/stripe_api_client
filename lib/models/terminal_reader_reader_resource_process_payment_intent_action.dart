// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_process_config.dart';
import './terminal_reader_reader_resource_process_payment_intent_action_payment_intent.dart';

/// auto generated
/// Represents a reader action to process a payment intent
class TerminalReaderReaderResourceProcessPaymentIntentAction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Most recent PaymentIntent processed by the reader.
  TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent?
      paymentIntent;

  ///  Represents a per-transaction override of a reader configuration
  TerminalReaderReaderResourceProcessConfig? processConfig;

  /// Instantiates a new [TerminalReaderReaderResourceProcessPaymentIntentAction] and sets the default values.
  TerminalReaderReaderResourceProcessPaymentIntentAction()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceProcessPaymentIntentAction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalReaderReaderResourceProcessPaymentIntentAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'payment_intent'] = (node) => paymentIntent = node.getObjectValue<
            TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent>(
        TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent
            .createFromDiscriminatorValue);
    deserializerMap['process_config'] = (node) => processConfig =
        node.getObjectValue<TerminalReaderReaderResourceProcessConfig>(
            TerminalReaderReaderResourceProcessConfig
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TerminalReaderReaderResourceProcessPaymentIntentActionPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeObjectValue<TerminalReaderReaderResourceProcessConfig>(
        'process_config', processConfig);
    writer.writeAdditionalData(additionalData);
  }
}
