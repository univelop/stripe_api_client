// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payout_application_fee.dart';
import './payout_balance_transaction.dart';
import './payout_destination.dart';
import './payout_failure_balance_transaction.dart';
import './payout_metadata.dart';
import './payout_object.dart';
import './payout_original_payout.dart';
import './payout_reconciliation_status.dart';
import './payout_reversed_by.dart';
import './payout_type.dart';
import './payouts_trace_id.dart';

/// auto generated
/// A `Payout` object is created when you receive funds from Stripe, or when youinitiate a payout to either a bank account or debit card of a [connectedStripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,and list all payouts. Payouts are made on [varyingschedules](/docs/connect/manage-payout-schedule), depending on your country andindustry.Related guide: [Receiving payouts](https://docs.stripe.com/payouts)
class Payout implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount (in cents (or local equivalent)) that transfers to your bank account or debit card.
  int? amount;

  ///  The application fee (if any) for the payout. [See the Connect documentation](https://docs.stripe.com/connect/instant-payouts#monetization-and-fees) for details.
  PayoutApplicationFee? applicationFee;

  ///  The amount of the application fee (if any) requested for the payout. [See the Connect documentation](https://docs.stripe.com/connect/instant-payouts#monetization-and-fees) for details.
  int? applicationFeeAmount;

  ///  Date that you can expect the payout to arrive in the bank. This factors in delays to account for weekends or bank holidays.
  int? arrivalDate;

  ///  Returns `true` if the payout is created by an [automated payout schedule](https://docs.stripe.com/payouts#payout-schedule) and `false` if it's [requested manually](https://stripe.com/docs/payouts#manual-payouts).
  bool? automatic;

  ///  ID of the balance transaction that describes the impact of this payout on your account balance.
  PayoutBalanceTransaction? balanceTransaction;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  ID of the bank account or card the payout is sent to.
  PayoutDestination? destination;

  ///  If the payout fails or cancels, this is the ID of the balance transaction that reverses the initial balance transaction and returns the funds from the failed payout back in your balance.
  PayoutFailureBalanceTransaction? failureBalanceTransaction;

  ///  Error code that provides a reason for a payout failure, if available. View our [list of failure codes](https://docs.stripe.com/api#payout_failures).
  String? failureCode;

  ///  Message that provides the reason for a payout failure, if available.
  String? failureMessage;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PayoutMetadata? metadata;

  ///  The method used to send this payout, which can be `standard` or `instant`. `instant` is supported for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
  String? method;

  ///  String representing the object's type. Objects of the same type share the same value.
  PayoutObject? object;

  ///  If the payout reverses another, this is the ID of the original payout.
  PayoutOriginalPayout? originalPayout;

  ///  ID of the v2 FinancialAccount the funds are sent to.
  String? payoutMethod;

  ///  If `completed`, you can use the [Balance Transactions API](https://docs.stripe.com/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
  PayoutReconciliationStatus? reconciliationStatus;

  ///  If the payout reverses, this is the ID of the payout that reverses this payout.
  PayoutReversedBy? reversedBy;

  ///  The source balance this payout came from, which can be one of the following: `card`, `fpx`, or `bank_account`.
  String? sourceType;

  ///  Extra information about a payout that displays on the user's bank statement.
  String? statementDescriptor;

  ///  Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it's submitted to the bank, when it becomes `in_transit`. The status changes to `paid` if the transaction succeeds, or to `failed` or `canceled` (within 5 business days). Some payouts that fail might initially show as `paid`, then change to `failed`.
  String? status;

  ///  A value that generates from the beneficiary's bank that allows users to track payouts with their bank. Banks might call this a "reference number" or something similar.
  PayoutsTraceId? traceId;

  ///  Can be `bank_account` or `card`.
  PayoutType? type_;

  /// Instantiates a new [Payout] and sets the default values.
  Payout() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Payout createFromDiscriminatorValue(ParseNode parseNode) {
    return Payout();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['application_fee'] = (node) => applicationFee =
        node.getObjectValue<PayoutApplicationFee>(
            PayoutApplicationFee.createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['arrival_date'] =
        (node) => arrivalDate = node.getIntValue();
    deserializerMap['automatic'] = (node) => automatic = node.getBoolValue();
    deserializerMap['balance_transaction'] = (node) => balanceTransaction =
        node.getObjectValue<PayoutBalanceTransaction>(
            PayoutBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['destination'] = (node) => destination =
        node.getObjectValue<PayoutDestination>(
            PayoutDestination.createFromDiscriminatorValue);
    deserializerMap['failure_balance_transaction'] = (node) =>
        failureBalanceTransaction =
            node.getObjectValue<PayoutFailureBalanceTransaction>(
                PayoutFailureBalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['failure_code'] =
        (node) => failureCode = node.getStringValue();
    deserializerMap['failure_message'] =
        (node) => failureMessage = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PayoutMetadata>(
            PayoutMetadata.createFromDiscriminatorValue);
    deserializerMap['method'] = (node) => method = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PayoutObject>((stringValue) => PayoutObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['original_payout'] = (node) => originalPayout =
        node.getObjectValue<PayoutOriginalPayout>(
            PayoutOriginalPayout.createFromDiscriminatorValue);
    deserializerMap['payout_method'] =
        (node) => payoutMethod = node.getStringValue();
    deserializerMap['reconciliation_status'] = (node) => reconciliationStatus =
        node.getEnumValue<PayoutReconciliationStatus>((stringValue) =>
            PayoutReconciliationStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reversed_by'] = (node) => reversedBy =
        node.getObjectValue<PayoutReversedBy>(
            PayoutReversedBy.createFromDiscriminatorValue);
    deserializerMap['source_type'] =
        (node) => sourceType = node.getStringValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['trace_id'] = (node) => traceId =
        node.getObjectValue<PayoutsTraceId>(
            PayoutsTraceId.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<PayoutType>(
        (stringValue) => PayoutType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<PayoutApplicationFee>(
        'application_fee', applicationFee);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeIntValue('arrival_date', arrivalDate);
    writer.writeBoolValue('automatic', value: automatic);
    writer.writeObjectValue<PayoutBalanceTransaction>(
        'balance_transaction', balanceTransaction);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<PayoutDestination>('destination', destination);
    writer.writeObjectValue<PayoutFailureBalanceTransaction>(
        'failure_balance_transaction', failureBalanceTransaction);
    writer.writeStringValue('failure_code', failureCode);
    writer.writeStringValue('failure_message', failureMessage);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PayoutMetadata>('metadata', metadata);
    writer.writeStringValue('method', method);
    writer.writeEnumValue<PayoutObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<PayoutOriginalPayout>(
        'original_payout', originalPayout);
    writer.writeStringValue('payout_method', payoutMethod);
    writer.writeEnumValue<PayoutReconciliationStatus>(
        'reconciliation_status', reconciliationStatus, (e) => e?.value);
    writer.writeObjectValue<PayoutReversedBy>('reversed_by', reversedBy);
    writer.writeStringValue('source_type', sourceType);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue('status', status);
    writer.writeObjectValue<PayoutsTraceId>('trace_id', traceId);
    writer.writeEnumValue<PayoutType>('type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
