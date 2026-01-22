// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customer_balance_transaction_checkout_session.dart';
import './customer_balance_transaction_credit_note.dart';
import './customer_balance_transaction_customer.dart';
import './customer_balance_transaction_invoice.dart';
import './customer_balance_transaction_metadata.dart';
import './customer_balance_transaction_object.dart';
import './customer_balance_transaction_type.dart';

/// auto generated
/// Each customer has a [Balance](https://docs.stripe.com/api/customers/object#customer_object-balance) value,which denotes a debit or credit that's automatically applied to their next invoice upon finalization.You may modify the value directly by using the [update customer API](https://docs.stripe.com/api/customers/update),or by creating a Customer Balance Transaction, which increments or decrements the customer's `balance` by the specified `amount`.Related guide: [Customer balance](https://docs.stripe.com/billing/customer/balance)
class CustomerBalanceTransaction implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount of the transaction. A negative value is a credit for the customer's balance, and a positive value is a debit to the customer's `balance`.
  int? amount;

  ///  The ID of the checkout session (if any) that created the transaction.
  CustomerBalanceTransactionCheckoutSession? checkoutSession;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The ID of the credit note (if any) related to the transaction.
  CustomerBalanceTransactionCreditNote? creditNote;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of the customer the transaction belongs to.
  CustomerBalanceTransactionCustomer? customer;

  ///  The ID of an Account representing a customer that the transaction belongs to.
  String? customerAccount;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  The customer's `balance` after the transaction was applied. A negative value decreases the amount due on the customer's next invoice. A positive value increases the amount due on the customer's next invoice.
  int? endingBalance;

  ///  Unique identifier for the object.
  String? id;

  ///  The ID of the invoice (if any) related to the transaction.
  CustomerBalanceTransactionInvoice? invoice;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CustomerBalanceTransactionMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  CustomerBalanceTransactionObject? object;

  ///  Transaction type: `adjustment`, `applied_to_invoice`, `credit_note`, `initial`, `invoice_overpaid`, `invoice_too_large`, `invoice_too_small`, `unspent_receiver_credit`, `unapplied_from_invoice`, `checkout_session_subscription_payment`, or `checkout_session_subscription_payment_canceled`. See the [Customer Balance page](https://docs.stripe.com/billing/customer/balance#types) to learn more about transaction types.
  CustomerBalanceTransactionType? type_;

  /// Instantiates a new [CustomerBalanceTransaction] and sets the default values.
  CustomerBalanceTransaction() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomerBalanceTransaction createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomerBalanceTransaction();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['checkout_session'] = (node) => checkoutSession =
        node.getObjectValue<CustomerBalanceTransactionCheckoutSession>(
            CustomerBalanceTransactionCheckoutSession
                .createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['credit_note'] = (node) => creditNote =
        node.getObjectValue<CustomerBalanceTransactionCreditNote>(
            CustomerBalanceTransactionCreditNote.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<CustomerBalanceTransactionCustomer>(
            CustomerBalanceTransactionCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['ending_balance'] =
        (node) => endingBalance = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice =
        node.getObjectValue<CustomerBalanceTransactionInvoice>(
            CustomerBalanceTransactionInvoice.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CustomerBalanceTransactionMetadata>(
            CustomerBalanceTransactionMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CustomerBalanceTransactionObject>((stringValue) =>
            CustomerBalanceTransactionObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CustomerBalanceTransactionType>((stringValue) =>
            CustomerBalanceTransactionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<CustomerBalanceTransactionCheckoutSession>(
        'checkout_session', checkoutSession);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<CustomerBalanceTransactionCreditNote>(
        'credit_note', creditNote);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<CustomerBalanceTransactionCustomer>(
        'customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('description', description);
    writer.writeIntValue('ending_balance', endingBalance);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<CustomerBalanceTransactionInvoice>(
        'invoice', invoice);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<CustomerBalanceTransactionMetadata>(
        'metadata', metadata);
    writer.writeEnumValue<CustomerBalanceTransactionObject>(
        'object', object, (e) => e?.value);
    writer.writeEnumValue<CustomerBalanceTransactionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
