// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_address.dart';
import './with_customer_post_request_body_bank_account.dart';
import './with_customer_post_request_body_business_name.dart';
import './with_customer_post_request_body_card.dart';
import './with_customer_post_request_body_cash_balance.dart';
import './with_customer_post_request_body_individual_name.dart';
import './with_customer_post_request_body_invoice_settings.dart';
import './with_customer_post_request_body_shipping.dart';
import './with_customer_post_request_body_tax.dart';
import './with_customer_post_request_body_tax_exempt.dart';

/// auto generated
class WithCustomerPostRequestBody implements Parsable {
  ///  The customer's address. Learn about [country-specific requirements for calculating tax](https://docs.stripe.com/invoicing/taxes?dashboard-or-api=dashboard#set-up-customer).
  WithCustomerPostRequestBodyAddress? address;

  ///  An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
  int? balance;

  ///  Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
  WithCustomerPostRequestBodyBankAccount? bankAccount;

  ///  The customer's business name. This may be up to *150 characters*.
  WithCustomerPostRequestBodyBusinessName? businessName;

  ///  A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
  WithCustomerPostRequestBodyCard? card;

  ///  Balance information and default balance settings for this customer.
  WithCustomerPostRequestBodyCashBalance? cashBalance;

  ///  ID of Alipay account to make the customer's new default for invoice payments.
  String? defaultAlipayAccount;

  ///  ID of bank account to make the customer's new default for invoice payments.
  String? defaultBankAccount;

  ///  ID of card to make the customer's new default for invoice payments.
  String? defaultCard;

  ///  If you are using payment methods created via the PaymentMethods API, see the [invoice_settings.default_payment_method](https://docs.stripe.com/api/customers/update#update_customer-invoice_settings-default_payment_method) parameter.Provide the ID of a payment source already attached to this customer to make it this customer's default payment source.If you want to add a new payment source and make it the default, see the [source](https://docs.stripe.com/api/customers/update#update_customer-source) property.
  String? defaultSource;

  ///  An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
  String? description;

  ///  Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
  String? email;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The customer's full name. This may be up to *150 characters*.
  WithCustomerPostRequestBodyIndividualName? individualName;

  ///  The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
  String? invoicePrefix;

  ///  Default invoice settings for this customer.
  WithCustomerPostRequestBodyInvoiceSettings? invoiceSettings;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The customer's full name or business name.
  String? name;

  ///  The sequence to be used on the customer's next invoice. Defaults to 1.
  int? nextInvoiceSequence;

  ///  The customer's phone number.
  String? phone;

  ///  Customer's preferred languages, ordered by preference.
  Iterable<String>? preferredLocales;

  ///  The customer's shipping information. Appears on invoices emailed to this customer.
  WithCustomerPostRequestBodyShipping? shipping;

  ///  The source property
  String? source;

  ///  Tax details about the customer.
  WithCustomerPostRequestBodyTax? tax;

  ///  The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
  WithCustomerPostRequestBodyTaxExempt? taxExempt;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCustomerPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<WithCustomerPostRequestBodyAddress>(
            WithCustomerPostRequestBodyAddress.createFromDiscriminatorValue);
    deserializerMap['balance'] = (node) => balance = node.getIntValue();
    deserializerMap['bank_account'] = (node) => bankAccount =
        node.getObjectValue<WithCustomerPostRequestBodyBankAccount>(
            WithCustomerPostRequestBodyBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['business_name'] = (node) => businessName =
        node.getObjectValue<WithCustomerPostRequestBodyBusinessName>(
            WithCustomerPostRequestBodyBusinessName
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<WithCustomerPostRequestBodyCard>(
            WithCustomerPostRequestBodyCard.createFromDiscriminatorValue);
    deserializerMap['cash_balance'] = (node) => cashBalance =
        node.getObjectValue<WithCustomerPostRequestBodyCashBalance>(
            WithCustomerPostRequestBodyCashBalance
                .createFromDiscriminatorValue);
    deserializerMap['default_alipay_account'] =
        (node) => defaultAlipayAccount = node.getStringValue();
    deserializerMap['default_bank_account'] =
        (node) => defaultBankAccount = node.getStringValue();
    deserializerMap['default_card'] =
        (node) => defaultCard = node.getStringValue();
    deserializerMap['default_source'] =
        (node) => defaultSource = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['individual_name'] = (node) => individualName =
        node.getObjectValue<WithCustomerPostRequestBodyIndividualName>(
            WithCustomerPostRequestBodyIndividualName
                .createFromDiscriminatorValue);
    deserializerMap['invoice_prefix'] =
        (node) => invoicePrefix = node.getStringValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<WithCustomerPostRequestBodyInvoiceSettings>(
            WithCustomerPostRequestBodyInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['next_invoice_sequence'] =
        (node) => nextInvoiceSequence = node.getIntValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['preferred_locales'] = (node) =>
        preferredLocales = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<WithCustomerPostRequestBodyShipping>(
            WithCustomerPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source = node.getStringValue();
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<WithCustomerPostRequestBodyTax>(
            WithCustomerPostRequestBodyTax.createFromDiscriminatorValue);
    deserializerMap['tax_exempt'] = (node) => taxExempt =
        node.getEnumValue<WithCustomerPostRequestBodyTaxExempt>((stringValue) =>
            WithCustomerPostRequestBodyTaxExempt.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithCustomerPostRequestBodyAddress>(
        'address', address);
    writer.writeIntValue('balance', balance);
    writer.writeObjectValue<WithCustomerPostRequestBodyBankAccount>(
        'bank_account', bankAccount);
    writer.writeObjectValue<WithCustomerPostRequestBodyBusinessName>(
        'business_name', businessName);
    writer.writeObjectValue<WithCustomerPostRequestBodyCard>('card', card);
    writer.writeObjectValue<WithCustomerPostRequestBodyCashBalance>(
        'cash_balance', cashBalance);
    writer.writeStringValue('default_alipay_account', defaultAlipayAccount);
    writer.writeStringValue('default_bank_account', defaultBankAccount);
    writer.writeStringValue('default_card', defaultCard);
    writer.writeStringValue('default_source', defaultSource);
    writer.writeStringValue('description', description);
    writer.writeStringValue('email', email);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithCustomerPostRequestBodyIndividualName>(
        'individual_name', individualName);
    writer.writeStringValue('invoice_prefix', invoicePrefix);
    writer.writeObjectValue<WithCustomerPostRequestBodyInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeIntValue('next_invoice_sequence', nextInvoiceSequence);
    writer.writeStringValue('phone', phone);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'preferred_locales', preferredLocales);
    writer.writeObjectValue<WithCustomerPostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeStringValue('source', source);
    writer.writeObjectValue<WithCustomerPostRequestBodyTax>('tax', tax);
    writer.writeEnumValue<WithCustomerPostRequestBodyTaxExempt>(
        'tax_exempt', taxExempt, (e) => e?.value);
  }
}
