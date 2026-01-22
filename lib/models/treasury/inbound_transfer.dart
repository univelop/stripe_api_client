// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../inbound_transfers.dart';
import '../treasury_inbound_transfers_resource_failure_details.dart';
import '../treasury_inbound_transfers_resource_inbound_transfer_resource_linked_flows.dart';
import '../treasury_inbound_transfers_resource_inbound_transfer_resource_status_transitions.dart';
import './inbound_transfer_metadata.dart';
import './inbound_transfer_object.dart';
import './inbound_transfer_status.dart';
import './inbound_transfer_transaction.dart';

/// auto generated
/// Use [InboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://api.stripe.com#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.Related guide: [Moving money with Treasury using InboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers)
class InboundTransfer implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount (in cents) transferred.
  int? amount;

  ///  Returns `true` if the InboundTransfer is able to be canceled.
  bool? cancelable;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Details about this InboundTransfer's failure. Only set when status is `failed`.
  TreasuryInboundTransfersResourceFailureDetails? failureDetails;

  ///  The FinancialAccount that received the funds.
  String? financialAccount;

  ///  A [hosted transaction receipt](https://docs.stripe.com/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
  String? hostedRegulatoryReceiptUrl;

  ///  Unique identifier for the object.
  String? id;

  ///  The linked_flows property
  TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows?
      linkedFlows;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  InboundTransferMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  InboundTransferObject? object;

  ///  The origin payment method to be debited for an InboundTransfer.
  String? originPaymentMethod;

  ///  Details about the PaymentMethod for an InboundTransfer.
  InboundTransfers? originPaymentMethodDetails;

  ///  Returns `true` if the funds for an InboundTransfer were returned after the InboundTransfer went to the `succeeded` state.
  bool? returned;

  ///  Statement descriptor shown when funds are debited from the source. Not all payment networks support `statement_descriptor`.
  String? statementDescriptor;

  ///  Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
  InboundTransferStatus? status;

  ///  The status_transitions property
  TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions?
      statusTransitions;

  ///  The Transaction associated with this object.
  InboundTransferTransaction? transaction;

  /// Instantiates a new [InboundTransfer] and sets the default values.
  InboundTransfer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InboundTransfer createFromDiscriminatorValue(ParseNode parseNode) {
    return InboundTransfer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['cancelable'] = (node) => cancelable = node.getBoolValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['failure_details'] = (node) => failureDetails =
        node.getObjectValue<TreasuryInboundTransfersResourceFailureDetails>(
            TreasuryInboundTransfersResourceFailureDetails
                .createFromDiscriminatorValue);
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['hosted_regulatory_receipt_url'] =
        (node) => hostedRegulatoryReceiptUrl = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap[
        'linked_flows'] = (node) => linkedFlows = node.getObjectValue<
            TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows>(
        TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
            .createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<InboundTransferMetadata>(
            InboundTransferMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<InboundTransferObject>((stringValue) =>
            InboundTransferObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['origin_payment_method'] =
        (node) => originPaymentMethod = node.getStringValue();
    deserializerMap['origin_payment_method_details'] = (node) =>
        originPaymentMethodDetails = node.getObjectValue<InboundTransfers>(
            InboundTransfers.createFromDiscriminatorValue);
    deserializerMap['returned'] = (node) => returned = node.getBoolValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<InboundTransferStatus>((stringValue) =>
            InboundTransferStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'status_transitions'] = (node) => statusTransitions = node.getObjectValue<
            TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions>(
        TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions
            .createFromDiscriminatorValue);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<InboundTransferTransaction>(
            InboundTransferTransaction.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeBoolValue('cancelable', value: cancelable);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<TreasuryInboundTransfersResourceFailureDetails>(
        'failure_details', failureDetails);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue(
        'hosted_regulatory_receipt_url', hostedRegulatoryReceiptUrl);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<
            TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows>(
        'linked_flows', linkedFlows);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<InboundTransferMetadata>('metadata', metadata);
    writer.writeEnumValue<InboundTransferObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('origin_payment_method', originPaymentMethod);
    writer.writeObjectValue<InboundTransfers>(
        'origin_payment_method_details', originPaymentMethodDetails);
    writer.writeBoolValue('returned', value: returned);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeEnumValue<InboundTransferStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeObjectValue<InboundTransferTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
