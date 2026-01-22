// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../outbound_transfers_payment_method_details.dart';
import '../treasury_outbound_transfers_resource_outbound_transfer_resource_tracking_details.dart';
import '../treasury_outbound_transfers_resource_returned_details.dart';
import '../treasury_outbound_transfers_resource_status_transitions.dart';
import './outbound_transfer_metadata.dart';
import './outbound_transfer_object.dart';
import './outbound_transfer_status.dart';
import './outbound_transfer_transaction.dart';

/// auto generated
/// Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://api.stripe.com#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://api.stripe.com#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
class OutboundTransfer implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Amount (in cents) transferred.
  int? amount;

  ///  Returns `true` if the object can be canceled, and `false` otherwise.
  bool? cancelable;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The PaymentMethod used as the payment instrument for an OutboundTransfer.
  String? destinationPaymentMethod;

  ///  The destination_payment_method_details property
  OutboundTransfersPaymentMethodDetails? destinationPaymentMethodDetails;

  ///  The date when funds are expected to arrive in the destination account.
  int? expectedArrivalDate;

  ///  The FinancialAccount that funds were pulled from.
  String? financialAccount;

  ///  A [hosted transaction receipt](https://docs.stripe.com/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
  String? hostedRegulatoryReceiptUrl;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  OutboundTransferMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  OutboundTransferObject? object;

  ///  Details about a returned OutboundTransfer. Only set when the status is `returned`.
  TreasuryOutboundTransfersResourceReturnedDetails? returnedDetails;

  ///  Information about the OutboundTransfer to be sent to the recipient account.
  String? statementDescriptor;

  ///  Current status of the OutboundTransfer: `processing`, `failed`, `canceled`, `posted`, `returned`. An OutboundTransfer is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundTransfer has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundTransfer fails to arrive at its destination, its status will change to `returned`.
  OutboundTransferStatus? status;

  ///  The status_transitions property
  TreasuryOutboundTransfersResourceStatusTransitions? statusTransitions;

  ///  Details about network-specific tracking information if available.
  TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails?
      trackingDetails;

  ///  The Transaction associated with this object.
  OutboundTransferTransaction? transaction;

  /// Instantiates a new [OutboundTransfer] and sets the default values.
  OutboundTransfer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundTransfer createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundTransfer();
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
    deserializerMap['destination_payment_method'] =
        (node) => destinationPaymentMethod = node.getStringValue();
    deserializerMap['destination_payment_method_details'] = (node) =>
        destinationPaymentMethodDetails = node.getObjectValue<
                OutboundTransfersPaymentMethodDetails>(
            OutboundTransfersPaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap['expected_arrival_date'] =
        (node) => expectedArrivalDate = node.getIntValue();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['hosted_regulatory_receipt_url'] =
        (node) => hostedRegulatoryReceiptUrl = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<OutboundTransferMetadata>(
            OutboundTransferMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<OutboundTransferObject>((stringValue) =>
            OutboundTransferObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['returned_details'] = (node) => returnedDetails =
        node.getObjectValue<TreasuryOutboundTransfersResourceReturnedDetails>(
            TreasuryOutboundTransfersResourceReturnedDetails
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<OutboundTransferStatus>((stringValue) =>
            OutboundTransferStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<TreasuryOutboundTransfersResourceStatusTransitions>(
            TreasuryOutboundTransfersResourceStatusTransitions
                .createFromDiscriminatorValue);
    deserializerMap[
        'tracking_details'] = (node) => trackingDetails = node.getObjectValue<
            TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails>(
        TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails
            .createFromDiscriminatorValue);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<OutboundTransferTransaction>(
            OutboundTransferTransaction.createFromDiscriminatorValue);
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
    writer.writeStringValue(
        'destination_payment_method', destinationPaymentMethod);
    writer.writeObjectValue<OutboundTransfersPaymentMethodDetails>(
        'destination_payment_method_details', destinationPaymentMethodDetails);
    writer.writeIntValue('expected_arrival_date', expectedArrivalDate);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue(
        'hosted_regulatory_receipt_url', hostedRegulatoryReceiptUrl);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<OutboundTransferMetadata>('metadata', metadata);
    writer.writeEnumValue<OutboundTransferObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<TreasuryOutboundTransfersResourceReturnedDetails>(
        'returned_details', returnedDetails);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeEnumValue<OutboundTransferStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<TreasuryOutboundTransfersResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeObjectValue<
            TreasuryOutboundTransfersResourceOutboundTransferResourceTrackingDetails>(
        'tracking_details', trackingDetails);
    writer.writeObjectValue<OutboundTransferTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
