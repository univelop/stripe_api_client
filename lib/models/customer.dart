// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './cash_balance.dart';
import './customer_default_source.dart';
import './customer_invoice_credit_balance.dart';
import './customer_metadata.dart';
import './customer_object.dart';
import './customer_sources.dart';
import './customer_subscriptions.dart';
import './customer_tax.dart';
import './customer_tax_exempt.dart';
import './customer_tax_ids.dart';
import './customer_test_clock.dart';
import './discount.dart';
import './invoice_setting_customer_setting.dart';
import './shipping.dart';

/// auto generated
/// This object represents a customer of your business. Use it to [create recurring charges](https://docs.stripe.com/invoicing/customer), [save payment](https://docs.stripe.com/payments/save-during-payment) and contact information,and track payments that belong to the same customer.
class Customer implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer's address.
  Address? address;

  ///  The current balance, if any, that's stored on the customer in their default currency. If negative, the customer has credit to apply to their next invoice. If positive, the customer has an amount owed that's added to their next invoice. The balance only considers amounts that Stripe hasn't successfully applied to any invoice. It doesn't reflect unpaid invoices. This balance is only taken into account after invoices finalize. For multi-currency balances, see [invoice_credit_balance](https://docs.stripe.com/api/customers/object#customer_object-invoice_credit_balance).
  int? balance;

  ///  The customer's business name.
  String? businessName;

  ///  The current funds being held by Stripe on behalf of the customer. You can apply these funds towards payment intents when the source is "cash_balance". The `settings[reconciliation_mode]` field describes if these funds apply to these payment intents manually or automatically.
  CashBalance? cashBalance;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) the customer can be charged in for recurring billing purposes.
  String? currency;

  ///  The ID of an Account representing a customer. You can use this ID with any v1 API that accepts a customer_account parameter.
  String? customerAccount;

  ///  ID of the default payment source for the customer.If you use payment methods created through the PaymentMethods API, see the [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/object#customer_object-invoice_settings-default_payment_method) field instead.
  CustomerDefaultSource? defaultSource;

  ///  Tracks the most recent state change on any invoice belonging to the customer. Paying an invoice or marking it uncollectible via the API will set this field to false. An automatic payment failure or passing the `invoice.due_date` will set this field to `true`.If an invoice becomes uncollectible by [dunning](https://docs.stripe.com/billing/automatic-collection), `delinquent` doesn't reset to `false`.If you care whether the customer has paid their most recent subscription invoice, use `subscription.status` instead. Paying or marking uncollectible any customer invoice regardless of whether it is the latest invoice for a subscription will always set this field to `false`.
  bool? delinquent;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Describes the current discount active on the customer, if there is one.
  Discount? discount;

  ///  The customer's email address.
  String? email;

  ///  Unique identifier for the object.
  String? id;

  ///  The customer's individual name.
  String? individualName;

  ///  The current multi-currency balances, if any, that's stored on the customer. If positive in a currency, the customer has a credit to apply to their next invoice denominated in that currency. If negative, the customer has an amount owed that's added to their next invoice denominated in that currency. These balances don't apply to unpaid invoices. They solely track amounts that Stripe hasn't successfully applied to any invoice. Stripe only applies a balance in a specific currency to an invoice after that invoice (which is in the same currency) finalizes.
  CustomerInvoiceCreditBalance? invoiceCreditBalance;

  ///  The prefix for the customer used to generate unique invoice numbers.
  String? invoicePrefix;

  ///  The invoice_settings property
  InvoiceSettingCustomerSetting? invoiceSettings;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  CustomerMetadata? metadata;

  ///  The customer's full name or business name.
  String? name;

  ///  The suffix of the customer's next invoice number (for example, 0001). When the account uses account level sequencing, this parameter is ignored in API requests and the field omitted in API responses.
  int? nextInvoiceSequence;

  ///  String representing the object's type. Objects of the same type share the same value.
  CustomerObject? object;

  ///  The customer's phone number.
  String? phone;

  ///  The customer's preferred locales (languages), ordered by preference.
  Iterable<String>? preferredLocales;

  ///  Mailing and shipping address for the customer. Appears on invoices emailed to this customer.
  Shipping? shipping;

  ///  The customer's payment sources, if any.
  CustomerSources? sources;

  ///  The customer's current subscriptions, if any.
  CustomerSubscriptions? subscriptions;

  ///  The tax property
  CustomerTax? tax;

  ///  Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to `reverse`, invoice and receipt PDFs include the following text: **"Reverse charge"**.
  CustomerTaxExempt? taxExempt;

  ///  The customer's tax IDs.
  CustomerTaxIds? taxIds;

  ///  ID of the test clock that this customer belongs to.
  CustomerTestClock? testClock;

  /// Instantiates a new [Customer] and sets the default values.
  Customer() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Customer createFromDiscriminatorValue(ParseNode parseNode) {
    return Customer();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['balance'] = (node) => balance = node.getIntValue();
    deserializerMap['business_name'] =
        (node) => businessName = node.getStringValue();
    deserializerMap['cash_balance'] = (node) => cashBalance = node
        .getObjectValue<CashBalance>(CashBalance.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['default_source'] = (node) => defaultSource =
        node.getObjectValue<CustomerDefaultSource>(
            CustomerDefaultSource.createFromDiscriminatorValue);
    deserializerMap['delinquent'] = (node) => delinquent = node.getBoolValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discount'] = (node) => discount =
        node.getObjectValue<Discount>(Discount.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['individual_name'] =
        (node) => individualName = node.getStringValue();
    deserializerMap['invoice_credit_balance'] = (node) => invoiceCreditBalance =
        node.getObjectValue<CustomerInvoiceCreditBalance>(
            CustomerInvoiceCreditBalance.createFromDiscriminatorValue);
    deserializerMap['invoice_prefix'] =
        (node) => invoicePrefix = node.getStringValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<InvoiceSettingCustomerSetting>(
            InvoiceSettingCustomerSetting.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CustomerMetadata>(
            CustomerMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['next_invoice_sequence'] =
        (node) => nextInvoiceSequence = node.getIntValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CustomerObject>((stringValue) => CustomerObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['preferred_locales'] = (node) =>
        preferredLocales = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<Shipping>(Shipping.createFromDiscriminatorValue);
    deserializerMap['sources'] = (node) => sources =
        node.getObjectValue<CustomerSources>(
            CustomerSources.createFromDiscriminatorValue);
    deserializerMap['subscriptions'] = (node) => subscriptions =
        node.getObjectValue<CustomerSubscriptions>(
            CustomerSubscriptions.createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node
        .getObjectValue<CustomerTax>(CustomerTax.createFromDiscriminatorValue);
    deserializerMap['tax_exempt'] = (node) => taxExempt =
        node.getEnumValue<CustomerTaxExempt>((stringValue) => CustomerTaxExempt
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['tax_ids'] = (node) => taxIds =
        node.getObjectValue<CustomerTaxIds>(
            CustomerTaxIds.createFromDiscriminatorValue);
    deserializerMap['test_clock'] = (node) => testClock =
        node.getObjectValue<CustomerTestClock>(
            CustomerTestClock.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeIntValue('balance', balance);
    writer.writeStringValue('business_name', businessName);
    writer.writeObjectValue<CashBalance>('cash_balance', cashBalance);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<CustomerDefaultSource>(
        'default_source', defaultSource);
    writer.writeBoolValue('delinquent', value: delinquent);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<Discount>('discount', discount);
    writer.writeStringValue('email', email);
    writer.writeStringValue('id', id);
    writer.writeStringValue('individual_name', individualName);
    writer.writeObjectValue<CustomerInvoiceCreditBalance>(
        'invoice_credit_balance', invoiceCreditBalance);
    writer.writeStringValue('invoice_prefix', invoicePrefix);
    writer.writeObjectValue<InvoiceSettingCustomerSetting>(
        'invoice_settings', invoiceSettings);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<CustomerMetadata>('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeIntValue('next_invoice_sequence', nextInvoiceSequence);
    writer.writeEnumValue<CustomerObject>('object', object, (e) => e?.value);
    writer.writeStringValue('phone', phone);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'preferred_locales', preferredLocales);
    writer.writeObjectValue<Shipping>('shipping', shipping);
    writer.writeObjectValue<CustomerSources>('sources', sources);
    writer.writeObjectValue<CustomerSubscriptions>(
        'subscriptions', subscriptions);
    writer.writeObjectValue<CustomerTax>('tax', tax);
    writer.writeEnumValue<CustomerTaxExempt>(
        'tax_exempt', taxExempt, (e) => e?.value);
    writer.writeObjectValue<CustomerTaxIds>('tax_ids', taxIds);
    writer.writeObjectValue<CustomerTestClock>('test_clock', testClock);
    writer.writeAdditionalData(additionalData);
  }
}
