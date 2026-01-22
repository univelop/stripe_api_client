// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_resource_cash_balance_transaction_resource_adjusted_for_overdraft.dart';
import './customer_balance_resource_cash_balance_transaction_resource_applied_to_payment_transaction.dart';
import './customer_balance_resource_cash_balance_transaction_resource_funded_transaction.dart';
import './customer_balance_resource_cash_balance_transaction_resource_refunded_from_payment_transaction.dart';
import './customer_balance_resource_cash_balance_transaction_resource_transferred_to_balance.dart';
import './customer_balance_resource_cash_balance_transaction_resource_unapplied_from_payment_transaction.dart';
import './customer_cash_balance_transaction_customer.dart';
import './customer_cash_balance_transaction_object.dart';
import './customer_cash_balance_transaction_type.dart';

/// auto generated
/// Customers with certain payments enabled have a cash balance, representing funds that were paidby the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactionsrepresent when funds are moved into or out of this balance. This includes funding by the customer, allocationto payments, and refunds to the customer.
class CustomerCashBalanceTransaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The adjusted_for_overdraft property
  CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft?
      adjustedForOverdraft;

  ///  The applied_to_payment property
  CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction?
      appliedToPayment;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The customer whose available cash balance changed as a result of this transaction.
  CustomerCashBalanceTransactionCustomer? customer;

  ///  The ID of an Account representing a customer whose available cash balance changed as a result of this transaction.
  String? customerAccount;

  ///  The total available cash balance for the specified currency after this transaction was applied. Represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? endingBalance;

  ///  The funded property
  CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction?
      funded;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The amount by which the cash balance changed, represented in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). A positive value represents funds being added to the cash balance, a negative value represents funds being removed from the cash balance.
  int? netAmount;

  ///  String representing the object's type. Objects of the same type share the same value.
  CustomerCashBalanceTransactionObject? object;

  ///  The refunded_from_payment property
  CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction?
      refundedFromPayment;

  ///  The transferred_to_balance property
  CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance?
      transferredToBalance;

  ///  The type of the cash balance transaction. New types may be added in future. See [Customer Balance](https://docs.stripe.com/payments/customer-balance#types) to learn more about these types.
  CustomerCashBalanceTransactionType? type_;

  ///  The unapplied_from_payment property
  CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction?
      unappliedFromPayment;

  /// Instantiates a new [CustomerCashBalanceTransaction] and sets the default values.
  CustomerCashBalanceTransaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerCashBalanceTransaction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomerCashBalanceTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adjusted_for_overdraft'] = (node) => adjustedForOverdraft =
        node.getObjectValue<
                CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft>(
            CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft
                .createFromDiscriminatorValue);
    deserializerMap[
        'applied_to_payment'] = (node) => appliedToPayment = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction>(
        CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction
            .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getObjectValue<
            CustomerCashBalanceTransactionCustomer>(
        CustomerCashBalanceTransactionCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['ending_balance'] =
        (node) => endingBalance = node.getIntValue();
    deserializerMap['funded'] = (node) => funded = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction>(
        CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
            .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['net_amount'] = (node) => netAmount = node.getIntValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CustomerCashBalanceTransactionObject>((stringValue) =>
            CustomerCashBalanceTransactionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap[
        'refunded_from_payment'] = (node) => refundedFromPayment = node.getObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction>(
        CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction
            .createFromDiscriminatorValue);
    deserializerMap['transferred_to_balance'] = (node) => transferredToBalance =
        node.getObjectValue<
                CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance>(
            CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CustomerCashBalanceTransactionType>((stringValue) =>
            CustomerCashBalanceTransactionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unapplied_from_payment'] = (node) => unappliedFromPayment =
        node.getObjectValue<
                CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction>(
            CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAdjustedForOverdraft>(
        'adjusted_for_overdraft', adjustedForOverdraft);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction>(
        'applied_to_payment', appliedToPayment);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<CustomerCashBalanceTransactionCustomer>(
        'customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeIntValue('ending_balance', endingBalance);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction>(
        'funded', funded);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeIntValue('net_amount', netAmount);
    writer.writeEnumValue<CustomerCashBalanceTransactionObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction>(
        'refunded_from_payment', refundedFromPayment);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance>(
        'transferred_to_balance', transferredToBalance);
    writer.writeEnumValue<CustomerCashBalanceTransactionType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction>(
        'unapplied_from_payment', unappliedFromPayment);
    writer.writeAdditionalData(additionalData);
  }
}
