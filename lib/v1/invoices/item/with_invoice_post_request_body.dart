// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_account_tax_ids.dart';
import './with_invoice_post_request_body_automatic_tax.dart';
import './with_invoice_post_request_body_collection_method.dart';
import './with_invoice_post_request_body_custom_fields.dart';
import './with_invoice_post_request_body_default_source.dart';
import './with_invoice_post_request_body_default_tax_rates.dart';
import './with_invoice_post_request_body_discounts.dart';
import './with_invoice_post_request_body_effective_at.dart';
import './with_invoice_post_request_body_issuer.dart';
import './with_invoice_post_request_body_number.dart';
import './with_invoice_post_request_body_on_behalf_of.dart';
import './with_invoice_post_request_body_payment_settings.dart';
import './with_invoice_post_request_body_rendering.dart';
import './with_invoice_post_request_body_shipping_cost.dart';
import './with_invoice_post_request_body_shipping_details.dart';
import './with_invoice_post_request_body_transfer_data.dart';

/// auto generated
class WithInvoicePostRequestBody implements Parsable {
  ///  The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
  WithInvoicePostRequestBodyAccountTaxIds? accountTaxIds;

  ///  A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://docs.stripe.com/billing/invoices/connect#collecting-fees).
  int? applicationFeeAmount;

  ///  Controls whether Stripe performs [automatic collection](https://docs.stripe.com/invoicing/integration/automatic-advancement-collection) of the invoice.
  bool? autoAdvance;

  ///  The time when this invoice should be scheduled to finalize (up to 5 years in the future). The invoice is finalized at this time if it's still in draft state. To turn off automatic finalization, set `auto_advance` to false.
  int? automaticallyFinalizesAt;

  ///  Settings for automatic tax lookup for this invoice.
  WithInvoicePostRequestBodyAutomaticTax? automaticTax;

  ///  Either `charge_automatically` or `send_invoice`. This field can be updated only on `draft` invoices.
  WithInvoicePostRequestBodyCollectionMethod? collectionMethod;

  ///  A list of up to 4 custom fields to be displayed on the invoice. If a value for `custom_fields` is specified, the list specified will replace the existing custom field list on this invoice. Pass an empty string to remove previously-defined fields.
  WithInvoicePostRequestBodyCustomFields? customFields;

  ///  The number of days from which the invoice is created until it is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
  int? daysUntilDue;

  ///  ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
  String? defaultPaymentMethod;

  ///  ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
  WithInvoicePostRequestBodyDefaultSource? defaultSource;

  ///  The tax rates that will apply to any line item that does not have `tax_rates` set. Pass an empty string to remove previously-defined tax rates.
  WithInvoicePostRequestBodyDefaultTaxRates? defaultTaxRates;

  ///  An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
  String? description;

  ///  The discounts that will apply to the invoice. Pass an empty string to remove previously-defined discounts.
  WithInvoicePostRequestBodyDiscounts? discounts;

  ///  The date on which payment for this invoice is due. Only valid for invoices where `collection_method=send_invoice`. This field can only be updated on `draft` invoices.
  int? dueDate;

  ///  The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
  WithInvoicePostRequestBodyEffectiveAt? effectiveAt;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Footer to be displayed on the invoice.
  String? footer;

  ///  The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
  WithInvoicePostRequestBodyIssuer? issuer;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Set the number for this invoice. If no number is present then a number will be assigned automatically when the invoice is finalized. In many markets, regulations require invoices to be unique, sequential and / or gapless. You are responsible for ensuring this is true across all your different invoicing systems in the event that you edit the invoice number using our API. If you use only Stripe for your invoices and do not change invoice numbers, Stripe handles this aspect of compliance for you automatically.
  WithInvoicePostRequestBodyNumber? number;

  ///  The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
  WithInvoicePostRequestBodyOnBehalfOf? onBehalfOf;

  ///  Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
  WithInvoicePostRequestBodyPaymentSettings? paymentSettings;

  ///  The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
  WithInvoicePostRequestBodyRendering? rendering;

  ///  Settings for the cost of shipping for this invoice.
  WithInvoicePostRequestBodyShippingCost? shippingCost;

  ///  Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
  WithInvoicePostRequestBodyShippingDetails? shippingDetails;

  ///  Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
  String? statementDescriptor;

  ///  If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice's charge. This will be unset if you POST an empty value.
  WithInvoicePostRequestBodyTransferData? transferData;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithInvoicePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_tax_ids'] = (node) => accountTaxIds =
        node.getObjectValue<WithInvoicePostRequestBodyAccountTaxIds>(
            WithInvoicePostRequestBodyAccountTaxIds
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['auto_advance'] =
        (node) => autoAdvance = node.getBoolValue();
    deserializerMap['automatically_finalizes_at'] =
        (node) => automaticallyFinalizesAt = node.getIntValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<WithInvoicePostRequestBodyAutomaticTax>(
            WithInvoicePostRequestBodyAutomaticTax
                .createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<WithInvoicePostRequestBodyCollectionMethod>(
            (stringValue) => WithInvoicePostRequestBodyCollectionMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getObjectValue<WithInvoicePostRequestBodyCustomFields>(
            WithInvoicePostRequestBodyCustomFields
                .createFromDiscriminatorValue);
    deserializerMap['days_until_due'] =
        (node) => daysUntilDue = node.getIntValue();
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['default_source'] = (node) => defaultSource =
        node.getObjectValue<WithInvoicePostRequestBodyDefaultSource>(
            WithInvoicePostRequestBodyDefaultSource
                .createFromDiscriminatorValue);
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getObjectValue<WithInvoicePostRequestBodyDefaultTaxRates>(
            WithInvoicePostRequestBodyDefaultTaxRates
                .createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<WithInvoicePostRequestBodyDiscounts>(
            WithInvoicePostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['due_date'] = (node) => dueDate = node.getIntValue();
    deserializerMap['effective_at'] = (node) => effectiveAt =
        node.getObjectValue<WithInvoicePostRequestBodyEffectiveAt>(
            WithInvoicePostRequestBodyEffectiveAt.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['issuer'] = (node) => issuer =
        node.getObjectValue<WithInvoicePostRequestBodyIssuer>(
            WithInvoicePostRequestBodyIssuer.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['number'] = (node) => number =
        node.getObjectValue<WithInvoicePostRequestBodyNumber>(
            WithInvoicePostRequestBodyNumber.createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<WithInvoicePostRequestBodyOnBehalfOf>(
            WithInvoicePostRequestBodyOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['payment_settings'] = (node) => paymentSettings =
        node.getObjectValue<WithInvoicePostRequestBodyPaymentSettings>(
            WithInvoicePostRequestBodyPaymentSettings
                .createFromDiscriminatorValue);
    deserializerMap['rendering'] = (node) => rendering =
        node.getObjectValue<WithInvoicePostRequestBodyRendering>(
            WithInvoicePostRequestBodyRendering.createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<WithInvoicePostRequestBodyShippingCost>(
            WithInvoicePostRequestBodyShippingCost
                .createFromDiscriminatorValue);
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<WithInvoicePostRequestBodyShippingDetails>(
            WithInvoicePostRequestBodyShippingDetails
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<WithInvoicePostRequestBodyTransferData>(
            WithInvoicePostRequestBodyTransferData
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithInvoicePostRequestBodyAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeBoolValue('auto_advance', value: autoAdvance);
    writer.writeIntValue(
        'automatically_finalizes_at', automaticallyFinalizesAt);
    writer.writeObjectValue<WithInvoicePostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<WithInvoicePostRequestBodyCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeObjectValue<WithInvoicePostRequestBodyCustomFields>(
        'custom_fields', customFields);
    writer.writeIntValue('days_until_due', daysUntilDue);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeObjectValue<WithInvoicePostRequestBodyDefaultSource>(
        'default_source', defaultSource);
    writer.writeObjectValue<WithInvoicePostRequestBodyDefaultTaxRates>(
        'default_tax_rates', defaultTaxRates);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<WithInvoicePostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeIntValue('due_date', dueDate);
    writer.writeObjectValue<WithInvoicePostRequestBodyEffectiveAt>(
        'effective_at', effectiveAt);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<WithInvoicePostRequestBodyIssuer>('issuer', issuer);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithInvoicePostRequestBodyNumber>('number', number);
    writer.writeObjectValue<WithInvoicePostRequestBodyOnBehalfOf>(
        'on_behalf_of', onBehalfOf);
    writer.writeObjectValue<WithInvoicePostRequestBodyPaymentSettings>(
        'payment_settings', paymentSettings);
    writer.writeObjectValue<WithInvoicePostRequestBodyRendering>(
        'rendering', rendering);
    writer.writeObjectValue<WithInvoicePostRequestBodyShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeObjectValue<WithInvoicePostRequestBodyShippingDetails>(
        'shipping_details', shippingDetails);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeObjectValue<WithInvoicePostRequestBodyTransferData>(
        'transfer_data', transferData);
  }
}
