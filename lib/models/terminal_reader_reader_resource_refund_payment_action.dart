// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './terminal_reader_reader_resource_refund_payment_action_charge.dart';
import './terminal_reader_reader_resource_refund_payment_action_metadata.dart';
import './terminal_reader_reader_resource_refund_payment_action_payment_intent.dart';
import './terminal_reader_reader_resource_refund_payment_action_reason.dart';
import './terminal_reader_reader_resource_refund_payment_action_refund.dart';
import './terminal_reader_reader_resource_refund_payment_config.dart';

/// auto generated
/// Represents a reader action to refund a payment
class TerminalReaderReaderResourceRefundPaymentAction
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount being refunded.
  int? amount;

  ///  Charge that is being refunded.
  TerminalReaderReaderResourceRefundPaymentActionCharge? charge;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  TerminalReaderReaderResourceRefundPaymentActionMetadata? metadata;

  ///  Payment intent that is being refunded.
  TerminalReaderReaderResourceRefundPaymentActionPaymentIntent? paymentIntent;

  ///  The reason for the refund.
  TerminalReaderReaderResourceRefundPaymentActionReason? reason;

  ///  Unique identifier for the refund object.
  TerminalReaderReaderResourceRefundPaymentActionRefund? refund;

  ///  Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
  bool? refundApplicationFee;

  ///  Represents a per-transaction override of a reader configuration
  TerminalReaderReaderResourceRefundPaymentConfig? refundPaymentConfig;

  ///  Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
  bool? reverseTransfer;

  /// Instantiates a new [TerminalReaderReaderResourceRefundPaymentAction] and sets the default values.
  TerminalReaderReaderResourceRefundPaymentAction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TerminalReaderReaderResourceRefundPaymentAction
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TerminalReaderReaderResourceRefundPaymentAction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['charge'] = (node) => charge = node
        .getObjectValue<TerminalReaderReaderResourceRefundPaymentActionCharge>(
            TerminalReaderReaderResourceRefundPaymentActionCharge
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            TerminalReaderReaderResourceRefundPaymentActionMetadata>(
        TerminalReaderReaderResourceRefundPaymentActionMetadata
            .createFromDiscriminatorValue);
    deserializerMap['payment_intent'] = (node) => paymentIntent =
        node.getObjectValue<
                TerminalReaderReaderResourceRefundPaymentActionPaymentIntent>(
            TerminalReaderReaderResourceRefundPaymentActionPaymentIntent
                .createFromDiscriminatorValue);
    deserializerMap['reason'] = (node) => reason = node
        .getEnumValue<TerminalReaderReaderResourceRefundPaymentActionReason>(
            (stringValue) =>
                TerminalReaderReaderResourceRefundPaymentActionReason.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['refund'] = (node) => refund = node
        .getObjectValue<TerminalReaderReaderResourceRefundPaymentActionRefund>(
            TerminalReaderReaderResourceRefundPaymentActionRefund
                .createFromDiscriminatorValue);
    deserializerMap['refund_application_fee'] =
        (node) => refundApplicationFee = node.getBoolValue();
    deserializerMap['refund_payment_config'] = (node) => refundPaymentConfig =
        node.getObjectValue<TerminalReaderReaderResourceRefundPaymentConfig>(
            TerminalReaderReaderResourceRefundPaymentConfig
                .createFromDiscriminatorValue);
    deserializerMap['reverse_transfer'] =
        (node) => reverseTransfer = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<
            TerminalReaderReaderResourceRefundPaymentActionCharge>(
        'charge', charge);
    writer.writeObjectValue<
            TerminalReaderReaderResourceRefundPaymentActionMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            TerminalReaderReaderResourceRefundPaymentActionPaymentIntent>(
        'payment_intent', paymentIntent);
    writer
        .writeEnumValue<TerminalReaderReaderResourceRefundPaymentActionReason>(
            'reason', reason, (e) => e?.value);
    writer.writeObjectValue<
            TerminalReaderReaderResourceRefundPaymentActionRefund>(
        'refund', refund);
    writer.writeBoolValue('refund_application_fee',
        value: refundApplicationFee);
    writer.writeObjectValue<TerminalReaderReaderResourceRefundPaymentConfig>(
        'refund_payment_config', refundPaymentConfig);
    writer.writeBoolValue('reverse_transfer', value: reverseTransfer);
    writer.writeAdditionalData(additionalData);
  }
}
