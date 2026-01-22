// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customers_post_request_body_address.dart';
import './customers_post_request_body_business_name.dart';
import './customers_post_request_body_cash_balance.dart';
import './customers_post_request_body_individual_name.dart';
import './customers_post_request_body_invoice_settings.dart';
import './customers_post_request_body_shipping.dart';
import './customers_post_request_body_tax.dart';
import './customers_post_request_body_tax_exempt.dart';
import './customers_post_request_body_tax_id_data.dart';

/// auto generated
class CustomersPostRequestBody implements Parsable {
  ///  The customer's address. Learn about [country-specific requirements for calculating tax](https://docs.stripe.com/invoicing/taxes?dashboard-or-api=dashboard#set-up-customer).
  CustomersPostRequestBodyAddress? address;

  ///  An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
  int? balance;

  ///  The customer's business name. This may be up to *150 characters*.
  CustomersPostRequestBodyBusinessName? businessName;

  ///  Balance information and default balance settings for this customer.
  CustomersPostRequestBodyCashBalance? cashBalance;

  ///  An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
  String? description;

  ///  Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
  String? email;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The customer's full name. This may be up to *150 characters*.
  CustomersPostRequestBodyIndividualName? individualName;

  ///  The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
  String? invoicePrefix;

  ///  Default invoice settings for this customer.
  CustomersPostRequestBodyInvoiceSettings? invoiceSettings;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The customer's full name or business name.
  String? name;

  ///  The sequence to be used on the customer's next invoice. Defaults to 1.
  int? nextInvoiceSequence;

  ///  The payment_method property
  String? paymentMethod;

  ///  The customer's phone number.
  String? phone;

  ///  Customer's preferred languages, ordered by preference.
  Iterable<String>? preferredLocales;

  ///  The customer's shipping information. Appears on invoices emailed to this customer.
  CustomersPostRequestBodyShipping? shipping;

  ///  The source property
  String? source;

  ///  Tax details about the customer.
  CustomersPostRequestBodyTax? tax;

  ///  The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
  CustomersPostRequestBodyTaxExempt? taxExempt;

  ///  The customer's tax IDs.
  Iterable<CustomersPostRequestBodyTaxIdData>? taxIdData;

  ///  ID of the test clock to attach to the customer.
  String? testClock;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<CustomersPostRequestBodyAddress>(
            CustomersPostRequestBodyAddress.createFromDiscriminatorValue);
    deserializerMap['balance'] = (node) => balance = node.getIntValue();
    deserializerMap['business_name'] = (node) => businessName =
        node.getObjectValue<CustomersPostRequestBodyBusinessName>(
            CustomersPostRequestBodyBusinessName.createFromDiscriminatorValue);
    deserializerMap['cash_balance'] = (node) => cashBalance =
        node.getObjectValue<CustomersPostRequestBodyCashBalance>(
            CustomersPostRequestBodyCashBalance.createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['individual_name'] = (node) => individualName =
        node.getObjectValue<CustomersPostRequestBodyIndividualName>(
            CustomersPostRequestBodyIndividualName
                .createFromDiscriminatorValue);
    deserializerMap['invoice_prefix'] =
        (node) => invoicePrefix = node.getStringValue();
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<CustomersPostRequestBodyInvoiceSettings>(
            CustomersPostRequestBodyInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['next_invoice_sequence'] =
        (node) => nextInvoiceSequence = node.getIntValue();
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['preferred_locales'] = (node) =>
        preferredLocales = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['shipping'] = (node) => shipping =
        node.getObjectValue<CustomersPostRequestBodyShipping>(
            CustomersPostRequestBodyShipping.createFromDiscriminatorValue);
    deserializerMap['source'] = (node) => source = node.getStringValue();
    deserializerMap['tax'] = (node) => tax =
        node.getObjectValue<CustomersPostRequestBodyTax>(
            CustomersPostRequestBodyTax.createFromDiscriminatorValue);
    deserializerMap['tax_exempt'] = (node) => taxExempt =
        node.getEnumValue<CustomersPostRequestBodyTaxExempt>((stringValue) =>
            CustomersPostRequestBodyTaxExempt.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_id_data'] = (node) => taxIdData =
        node.getCollectionOfObjectValues<CustomersPostRequestBodyTaxIdData>(
            CustomersPostRequestBodyTaxIdData.createFromDiscriminatorValue);
    deserializerMap['test_clock'] = (node) => testClock = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CustomersPostRequestBodyAddress>(
        'address', address);
    writer.writeIntValue('balance', balance);
    writer.writeObjectValue<CustomersPostRequestBodyBusinessName>(
        'business_name', businessName);
    writer.writeObjectValue<CustomersPostRequestBodyCashBalance>(
        'cash_balance', cashBalance);
    writer.writeStringValue('description', description);
    writer.writeStringValue('email', email);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<CustomersPostRequestBodyIndividualName>(
        'individual_name', individualName);
    writer.writeStringValue('invoice_prefix', invoicePrefix);
    writer.writeObjectValue<CustomersPostRequestBodyInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeIntValue('next_invoice_sequence', nextInvoiceSequence);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeStringValue('phone', phone);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'preferred_locales', preferredLocales);
    writer.writeObjectValue<CustomersPostRequestBodyShipping>(
        'shipping', shipping);
    writer.writeStringValue('source', source);
    writer.writeObjectValue<CustomersPostRequestBodyTax>('tax', tax);
    writer.writeEnumValue<CustomersPostRequestBodyTaxExempt>(
        'tax_exempt', taxExempt, (e) => e?.value);
    writer.writeCollectionOfObjectValues<CustomersPostRequestBodyTaxIdData>(
        'tax_id_data', taxIdData);
    writer.writeStringValue('test_clock', testClock);
  }
}
