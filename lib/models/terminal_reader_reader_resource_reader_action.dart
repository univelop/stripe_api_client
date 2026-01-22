// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_collect_inputs_action.dart';
import './terminal_reader_reader_resource_collect_payment_method_action.dart';
import './terminal_reader_reader_resource_confirm_payment_intent_action.dart';
import './terminal_reader_reader_resource_process_payment_intent_action.dart';
import './terminal_reader_reader_resource_process_setup_intent_action.dart';
import './terminal_reader_reader_resource_reader_action_status.dart';
import './terminal_reader_reader_resource_reader_action_type.dart';
import './terminal_reader_reader_resource_refund_payment_action.dart';
import './terminal_reader_reader_resource_set_reader_display_action.dart';

/// auto generated
/// Represents an action performed by the reader
class TerminalReaderReaderResourceReaderAction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Represents a reader action to collect customer inputs
  TerminalReaderReaderResourceCollectInputsAction? collectInputs;

  ///  Represents a reader action to collect a payment method
  TerminalReaderReaderResourceCollectPaymentMethodAction? collectPaymentMethod;

  ///  Represents a reader action to confirm a payment
  TerminalReaderReaderResourceConfirmPaymentIntentAction? confirmPaymentIntent;

  ///  Failure code, only set if status is `failed`.
  String? failureCode;

  ///  Detailed failure message, only set if status is `failed`.
  String? failureMessage;

  ///  Represents a reader action to process a payment intent
  TerminalReaderReaderResourceProcessPaymentIntentAction? processPaymentIntent;

  ///  Represents a reader action to process a setup intent
  TerminalReaderReaderResourceProcessSetupIntentAction? processSetupIntent;

  ///  Represents a reader action to refund a payment
  TerminalReaderReaderResourceRefundPaymentAction? refundPayment;

  ///  Represents a reader action to set the reader display
  TerminalReaderReaderResourceSetReaderDisplayAction? setReaderDisplay;

  ///  Status of the action performed by the reader.
  TerminalReaderReaderResourceReaderActionStatus? status;

  ///  Type of action performed by the reader.
  TerminalReaderReaderResourceReaderActionType? type_;

  /// Instantiates a new [TerminalReaderReaderResourceReaderAction] and sets the default values.
  TerminalReaderReaderResourceReaderAction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceReaderAction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TerminalReaderReaderResourceReaderAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['collect_inputs'] = (node) => collectInputs =
        node.getObjectValue<TerminalReaderReaderResourceCollectInputsAction>(
            TerminalReaderReaderResourceCollectInputsAction
                .createFromDiscriminatorValue);
    deserializerMap['collect_payment_method'] = (node) => collectPaymentMethod =
        node.getObjectValue<
                TerminalReaderReaderResourceCollectPaymentMethodAction>(
            TerminalReaderReaderResourceCollectPaymentMethodAction
                .createFromDiscriminatorValue);
    deserializerMap['confirm_payment_intent'] = (node) => confirmPaymentIntent =
        node.getObjectValue<
                TerminalReaderReaderResourceConfirmPaymentIntentAction>(
            TerminalReaderReaderResourceConfirmPaymentIntentAction
                .createFromDiscriminatorValue);
    deserializerMap['failure_code'] =
        (node) => failureCode = node.getStringValue();
    deserializerMap['failure_message'] =
        (node) => failureMessage = node.getStringValue();
    deserializerMap['process_payment_intent'] = (node) => processPaymentIntent =
        node.getObjectValue<
                TerminalReaderReaderResourceProcessPaymentIntentAction>(
            TerminalReaderReaderResourceProcessPaymentIntentAction
                .createFromDiscriminatorValue);
    deserializerMap['process_setup_intent'] = (node) => processSetupIntent =
        node.getObjectValue<
                TerminalReaderReaderResourceProcessSetupIntentAction>(
            TerminalReaderReaderResourceProcessSetupIntentAction
                .createFromDiscriminatorValue);
    deserializerMap['refund_payment'] = (node) => refundPayment =
        node.getObjectValue<TerminalReaderReaderResourceRefundPaymentAction>(
            TerminalReaderReaderResourceRefundPaymentAction
                .createFromDiscriminatorValue);
    deserializerMap['set_reader_display'] = (node) => setReaderDisplay =
        node.getObjectValue<TerminalReaderReaderResourceSetReaderDisplayAction>(
            TerminalReaderReaderResourceSetReaderDisplayAction
                .createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<TerminalReaderReaderResourceReaderActionStatus>(
            (stringValue) => TerminalReaderReaderResourceReaderActionStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<TerminalReaderReaderResourceReaderActionType>(
            (stringValue) => TerminalReaderReaderResourceReaderActionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<TerminalReaderReaderResourceCollectInputsAction>(
        'collect_inputs', collectInputs);
    writer.writeObjectValue<
            TerminalReaderReaderResourceCollectPaymentMethodAction>(
        'collect_payment_method', collectPaymentMethod);
    writer.writeObjectValue<
            TerminalReaderReaderResourceConfirmPaymentIntentAction>(
        'confirm_payment_intent', confirmPaymentIntent);
    writer.writeStringValue('failure_code', failureCode);
    writer.writeStringValue('failure_message', failureMessage);
    writer.writeObjectValue<
            TerminalReaderReaderResourceProcessPaymentIntentAction>(
        'process_payment_intent', processPaymentIntent);
    writer
        .writeObjectValue<TerminalReaderReaderResourceProcessSetupIntentAction>(
            'process_setup_intent', processSetupIntent);
    writer.writeObjectValue<TerminalReaderReaderResourceRefundPaymentAction>(
        'refund_payment', refundPayment);
    writer.writeObjectValue<TerminalReaderReaderResourceSetReaderDisplayAction>(
        'set_reader_display', setReaderDisplay);
    writer.writeEnumValue<TerminalReaderReaderResourceReaderActionStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<TerminalReaderReaderResourceReaderActionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
