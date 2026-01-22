// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_confirm_config.dart';
import './terminal_reader_reader_resource_confirm_payment_intent_action_payment_intent.dart';

/// auto generated
/// Represents a reader action to confirm a payment
class TerminalReaderReaderResourceConfirmPaymentIntentAction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Represents a per-transaction override of a reader configuration
  TerminalReaderReaderResourceConfirmConfig? confirmConfig;

  ///  Most recent PaymentIntent processed by the reader.
  TerminalReaderReaderResourceConfirmPaymentIntentActionPaymentIntent?
      paymentIntent;

  /// Instantiates a new [TerminalReaderReaderResourceConfirmPaymentIntentAction] and sets the default values.
  TerminalReaderReaderResourceConfirmPaymentIntentAction()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceConfirmPaymentIntentAction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalReaderReaderResourceConfirmPaymentIntentAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['confirm_config'] = (node) => confirmConfig =
        node.getObjectValue<TerminalReaderReaderResourceConfirmConfig>(
            TerminalReaderReaderResourceConfirmConfig
                .createFromDiscriminatorValue);
    deserializerMap[
        'payment_intent'] = (node) => paymentIntent = node.getObjectValue<
            TerminalReaderReaderResourceConfirmPaymentIntentActionPaymentIntent>(
        TerminalReaderReaderResourceConfirmPaymentIntentActionPaymentIntent
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalReaderReaderResourceConfirmConfig>(
        'confirm_config', confirmConfig);
    writer.writeObjectValue<
            TerminalReaderReaderResourceConfirmPaymentIntentActionPaymentIntent>(
        'payment_intent', paymentIntent);
    writer.writeAdditionalData(additionalData);
  }
}
