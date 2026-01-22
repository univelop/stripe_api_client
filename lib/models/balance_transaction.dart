// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './balance_transaction_balance_type.dart';
import './balance_transaction_object.dart';
import './balance_transaction_source.dart';
import './balance_transaction_type.dart';
import './fee.dart';

/// auto generated
/// Balance transactions represent funds moving through your Stripe account.Stripe creates them for every type of transaction that enters or leaves your Stripe account balance.Related guide: [Balance transaction types](https://docs.stripe.com/reports/balance-transaction-types)
class BalanceTransaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Gross amount of this transaction (in cents (or local equivalent)). A positive value represents funds charged to another party, and a negative value represents funds sent to another party.
  int? amount;

  ///  The date that the transaction's net funds become available in the Stripe balance.
  int? availableOn;

  ///  The balance that this transaction impacts.
  BalanceTransactionBalanceType? balanceType;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  If applicable, this transaction uses an exchange rate. If money converts from currency A to currency B, then the `amount` in currency A, multipled by the `exchange_rate`, equals the `amount` in currency B. For example, if you charge a customer 10.00 EUR, the PaymentIntent's `amount` is `1000` and `currency` is `eur`. If this converts to 12.34 USD in your Stripe account, the BalanceTransaction's `amount` is `1234`, its `currency` is `usd`, and the `exchange_rate` is `1.234`.
  double? exchangeRate;

  ///  Fees (in cents (or local equivalent)) paid for this transaction. Represented as a positive integer when assessed.
  int? fee;

  ///  Detailed breakdown of fees (in cents (or local equivalent)) paid for this transaction.
  Iterable<Fee>? feeDetails;

  ///  Unique identifier for the object.
  String? id;

  ///  Net impact to a Stripe balance (in cents (or local equivalent)). A positive value represents incrementing a Stripe balance, and a negative value decrementing a Stripe balance. You can calculate the net impact of a transaction on a balance by `amount` - `fee`
  int? net;

  ///  String representing the object's type. Objects of the same type share the same value.
  BalanceTransactionObject? object;

  ///  Learn more about how [reporting categories](https://stripe.com/docs/reports/reporting-categories) can help you understand balance transactions from an accounting perspective.
  String? reportingCategory;

  ///  This transaction relates to the Stripe object.
  BalanceTransactionSource? source;

  ///  The transaction's net funds status in the Stripe balance, which are either `available` or `pending`.
  String? status;

  ///  Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `payout_minimum_balance_hold`, `payout_minimum_balance_release`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `stripe_balance_payment_debit`, `stripe_balance_payment_debit_reversal`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. Learn more about [balance transaction types and what they represent](https://stripe.com/docs/reports/balance-transaction-types). To classify transactions for accounting purposes, consider `reporting_category` instead.
  BalanceTransactionType? type_;

  /// Instantiates a new [BalanceTransaction] and sets the default values.
  BalanceTransaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BalanceTransaction createFromDiscriminatorValue(ParseNode parseNode) {
    return BalanceTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['available_on'] =
        (node) => availableOn = node.getIntValue();
    deserializerMap['balance_type'] = (node) => balanceType =
        node.getEnumValue<BalanceTransactionBalanceType>((stringValue) =>
            BalanceTransactionBalanceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['exchange_rate'] =
        (node) => exchangeRate = node.getDoubleValue();
    deserializerMap['fee'] = (node) => fee = node.getIntValue();
    deserializerMap['fee_details'] = (node) => feeDetails =
        node.getCollectionOfObjectValues<Fee>(Fee.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['net'] = (node) => net = node.getIntValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<BalanceTransactionObject>((stringValue) =>
            BalanceTransactionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reporting_category'] =
        (node) => reportingCategory = node.getStringValue();
    deserializerMap['source'] = (node) => source =
        node.getObjectValue<BalanceTransactionSource>(
            BalanceTransactionSource.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BalanceTransactionType>((stringValue) =>
            BalanceTransactionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeIntValue('available_on', availableOn);
    writer.writeEnumValue<BalanceTransactionBalanceType>(
        'balance_type', balanceType, (e) => e?.value);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeDoubleValue('exchange_rate', exchangeRate);
    writer.writeIntValue('fee', fee);
    writer.writeCollectionOfObjectValues<Fee>('fee_details', feeDetails);
    writer.writeStringValue('id', id);
    writer.writeIntValue('net', net);
    writer.writeEnumValue<BalanceTransactionObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('reporting_category', reportingCategory);
    writer.writeObjectValue<BalanceTransactionSource>('source', source);
    writer.writeStringValue('status', status);
    writer.writeEnumValue<BalanceTransactionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
