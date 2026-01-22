// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../outbound_payments_payment_method_details.dart';
import '../treasury_outbound_payments_resource_outbound_payment_resource_end_user_details.dart';
import '../treasury_outbound_payments_resource_outbound_payment_resource_status_transitions.dart';
import '../treasury_outbound_payments_resource_outbound_payment_resource_tracking_details.dart';
import '../treasury_outbound_payments_resource_returned_status.dart';
import './outbound_payment_metadata.dart';
import './outbound_payment_object.dart';
import './outbound_payment_status.dart';
import './outbound_payment_transaction.dart';

/// auto generated
/// Use [OutboundPayments](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments) to send funds to another party's external bank account or [FinancialAccount](https://api.stripe.com#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://api.stripe.com#outbound_transfers).Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.Related guide: [Moving money with Treasury using OutboundPayment objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments)
class OutboundPayment implements AdditionalDataHolder, Parsable {
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

  ///  ID of the [customer](https://docs.stripe.com/api/customers) to whom an OutboundPayment is sent.
  String? customer;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The PaymentMethod via which an OutboundPayment is sent. This field can be empty if the OutboundPayment was created using `destination_payment_method_data`.
  String? destinationPaymentMethod;

  ///  Details about the PaymentMethod for an OutboundPayment.
  OutboundPaymentsPaymentMethodDetails? destinationPaymentMethodDetails;

  ///  Details about the end user.
  TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails?
      endUserDetails;

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
  OutboundPaymentMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  OutboundPaymentObject? object;

  ///  Details about a returned OutboundPayment. Only set when the status is `returned`.
  TreasuryOutboundPaymentsResourceReturnedStatus? returnedDetails;

  ///  The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer).
  String? statementDescriptor;

  ///  Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
  OutboundPaymentStatus? status;

  ///  The status_transitions property
  TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions?
      statusTransitions;

  ///  Details about network-specific tracking information if available.
  TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails?
      trackingDetails;

  ///  The Transaction associated with this object.
  OutboundPaymentTransaction? transaction;

  /// Instantiates a new [OutboundPayment] and sets the default values.
  OutboundPayment() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPayment createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPayment();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['cancelable'] = (node) => cancelable = node.getBoolValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination_payment_method'] =
        (node) => destinationPaymentMethod = node.getStringValue();
    deserializerMap['destination_payment_method_details'] = (node) =>
        destinationPaymentMethodDetails = node.getObjectValue<
                OutboundPaymentsPaymentMethodDetails>(
            OutboundPaymentsPaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap[
        'end_user_details'] = (node) => endUserDetails = node.getObjectValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails>(
        TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails
            .createFromDiscriminatorValue);
    deserializerMap['expected_arrival_date'] =
        (node) => expectedArrivalDate = node.getIntValue();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['hosted_regulatory_receipt_url'] =
        (node) => hostedRegulatoryReceiptUrl = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<OutboundPaymentMetadata>(
            OutboundPaymentMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<OutboundPaymentObject>((stringValue) =>
            OutboundPaymentObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['returned_details'] = (node) => returnedDetails =
        node.getObjectValue<TreasuryOutboundPaymentsResourceReturnedStatus>(
            TreasuryOutboundPaymentsResourceReturnedStatus
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<OutboundPaymentStatus>((stringValue) =>
            OutboundPaymentStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'status_transitions'] = (node) => statusTransitions = node.getObjectValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions>(
        TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
            .createFromDiscriminatorValue);
    deserializerMap[
        'tracking_details'] = (node) => trackingDetails = node.getObjectValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails>(
        TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails
            .createFromDiscriminatorValue);
    deserializerMap['transaction'] = (node) => transaction =
        node.getObjectValue<OutboundPaymentTransaction>(
            OutboundPaymentTransaction.createFromDiscriminatorValue);
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
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('description', description);
    writer.writeStringValue(
        'destination_payment_method', destinationPaymentMethod);
    writer.writeObjectValue<OutboundPaymentsPaymentMethodDetails>(
        'destination_payment_method_details', destinationPaymentMethodDetails);
    writer.writeObjectValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails>(
        'end_user_details', endUserDetails);
    writer.writeIntValue('expected_arrival_date', expectedArrivalDate);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeStringValue(
        'hosted_regulatory_receipt_url', hostedRegulatoryReceiptUrl);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<OutboundPaymentMetadata>('metadata', metadata);
    writer.writeEnumValue<OutboundPaymentObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<TreasuryOutboundPaymentsResourceReturnedStatus>(
        'returned_details', returnedDetails);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeEnumValue<OutboundPaymentStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeObjectValue<
            TreasuryOutboundPaymentsResourceOutboundPaymentResourceTrackingDetails>(
        'tracking_details', trackingDetails);
    writer.writeObjectValue<OutboundPaymentTransaction>(
        'transaction', transaction);
    writer.writeAdditionalData(additionalData);
  }
}
