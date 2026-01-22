// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_account_tax_ids.dart';
import './invoices_post_request_body_automatic_tax.dart';
import './invoices_post_request_body_collection_method.dart';
import './invoices_post_request_body_custom_fields.dart';
import './invoices_post_request_body_discounts.dart';
import './invoices_post_request_body_from_invoice.dart';
import './invoices_post_request_body_issuer.dart';
import './invoices_post_request_body_payment_settings.dart';
import './invoices_post_request_body_pending_invoice_items_behavior.dart';
import './invoices_post_request_body_rendering.dart';
import './invoices_post_request_body_shipping_cost.dart';
import './invoices_post_request_body_shipping_details.dart';
import './invoices_post_request_body_transfer_data.dart';

/// auto generated
class InvoicesPostRequestBody implements Parsable {
  ///  The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
  InvoicesPostRequestBodyAccountTaxIds? accountTaxIds;

  ///  A fee in cents (or local equivalent) that will be applied to the invoice and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the Stripe-Account header in order to take an application fee. For more information, see the application fees [documentation](https://docs.stripe.com/billing/invoices/connect#collecting-fees).
  int? applicationFeeAmount;

  ///  Controls whether Stripe performs [automatic collection](https://docs.stripe.com/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action. Defaults to false.
  bool? autoAdvance;

  ///  The time when this invoice should be scheduled to finalize (up to 5 years in the future). The invoice is finalized at this time if it's still in draft state.
  int? automaticallyFinalizesAt;

  ///  Settings for automatic tax lookup for this invoice.
  InvoicesPostRequestBodyAutomaticTax? automaticTax;

  ///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. Defaults to `charge_automatically`.
  InvoicesPostRequestBodyCollectionMethod? collectionMethod;

  ///  The currency to create this invoice in. Defaults to that of `customer` if not specified.
  String? currency;

  ///  The ID of the customer to bill.
  String? customer;

  ///  The ID of the account to bill.
  String? customerAccount;

  ///  A list of up to 4 custom fields to be displayed on the invoice.
  InvoicesPostRequestBodyCustomFields? customFields;

  ///  The number of days from when the invoice is created until it is due. Valid only for invoices where `collection_method=send_invoice`.
  int? daysUntilDue;

  ///  ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
  String? defaultPaymentMethod;

  ///  ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
  String? defaultSource;

  ///  The tax rates that will apply to any line item that does not have `tax_rates` set.
  Iterable<String>? defaultTaxRates;

  ///  An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
  String? description;

  ///  The coupons and promotion codes to redeem into discounts for the invoice. If not specified, inherits the discount from the invoice's customer. Pass an empty string to avoid inheriting any discounts.
  InvoicesPostRequestBodyDiscounts? discounts;

  ///  The date on which payment for this invoice is due. Valid only for invoices where `collection_method=send_invoice`.
  int? dueDate;

  ///  The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
  int? effectiveAt;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Footer to be displayed on the invoice.
  String? footer;

  ///  Revise an existing invoice. The new invoice will be created in `status=draft`. See the [revision documentation](https://docs.stripe.com/invoicing/invoice-revisions) for more details.
  InvoicesPostRequestBodyFromInvoice? fromInvoice;

  ///  The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
  InvoicesPostRequestBodyIssuer? issuer;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Set the number for this invoice. If no number is present then a number will be assigned automatically when the invoice is finalized. In many markets, regulations require invoices to be unique, sequential and / or gapless. You are responsible for ensuring this is true across all your different invoicing systems in the event that you edit the invoice number using our API. If you use only Stripe for your invoices and do not change invoice numbers, Stripe handles this aspect of compliance for you automatically.
  String? number;

  ///  The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
  String? onBehalfOf;

  ///  Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
  InvoicesPostRequestBodyPaymentSettings? paymentSettings;

  ///  How to handle pending invoice items on invoice creation. Defaults to `exclude` if the parameter is omitted.
  InvoicesPostRequestBodyPendingInvoiceItemsBehavior?
      pendingInvoiceItemsBehavior;

  ///  The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
  InvoicesPostRequestBodyRendering? rendering;

  ///  Settings for the cost of shipping for this invoice.
  InvoicesPostRequestBodyShippingCost? shippingCost;

  ///  Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
  InvoicesPostRequestBodyShippingDetails? shippingDetails;

  ///  Extra information about a charge for the customer's credit card statement. It must contain at least one letter. If not specified and this invoice is part of a subscription, the default `statement_descriptor` will be set to the first subscription item's product's `statement_descriptor`.
  String? statementDescriptor;

  ///  The ID of the subscription to invoice, if any. If set, the created invoice will only include pending invoice items for that subscription. The subscription's billing cycle and regular subscription events won't be affected.
  String? subscription;

  ///  If specified, the funds from the invoice will be transferred to the destination and the ID of the resulting transfer will be found on the invoice's charge.
  InvoicesPostRequestBodyTransferData? transferData;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_tax_ids'] = (node) => accountTaxIds =
        node.getObjectValue<InvoicesPostRequestBodyAccountTaxIds>(
            InvoicesPostRequestBodyAccountTaxIds.createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['auto_advance'] =
        (node) => autoAdvance = node.getBoolValue();
    deserializerMap['automatically_finalizes_at'] =
        (node) => automaticallyFinalizesAt = node.getIntValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<InvoicesPostRequestBodyAutomaticTax>(
            InvoicesPostRequestBodyAutomaticTax.createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<InvoicesPostRequestBodyCollectionMethod>(
            (stringValue) => InvoicesPostRequestBodyCollectionMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getObjectValue<InvoicesPostRequestBodyCustomFields>(
            InvoicesPostRequestBodyCustomFields.createFromDiscriminatorValue);
    deserializerMap['days_until_due'] =
        (node) => daysUntilDue = node.getIntValue();
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['default_source'] =
        (node) => defaultSource = node.getStringValue();
    deserializerMap['default_tax_rates'] = (node) =>
        defaultTaxRates = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<InvoicesPostRequestBodyDiscounts>(
            InvoicesPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['due_date'] = (node) => dueDate = node.getIntValue();
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['from_invoice'] = (node) => fromInvoice =
        node.getObjectValue<InvoicesPostRequestBodyFromInvoice>(
            InvoicesPostRequestBodyFromInvoice.createFromDiscriminatorValue);
    deserializerMap['issuer'] = (node) => issuer =
        node.getObjectValue<InvoicesPostRequestBodyIssuer>(
            InvoicesPostRequestBodyIssuer.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['on_behalf_of'] =
        (node) => onBehalfOf = node.getStringValue();
    deserializerMap['payment_settings'] = (node) => paymentSettings =
        node.getObjectValue<InvoicesPostRequestBodyPaymentSettings>(
            InvoicesPostRequestBodyPaymentSettings
                .createFromDiscriminatorValue);
    deserializerMap['pending_invoice_items_behavior'] = (node) =>
        pendingInvoiceItemsBehavior = node
            .getEnumValue<InvoicesPostRequestBodyPendingInvoiceItemsBehavior>(
                (stringValue) =>
                    InvoicesPostRequestBodyPendingInvoiceItemsBehavior.values
                        .where((enumVal) => enumVal.value == stringValue)
                        .firstOrNull);
    deserializerMap['rendering'] = (node) => rendering =
        node.getObjectValue<InvoicesPostRequestBodyRendering>(
            InvoicesPostRequestBodyRendering.createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<InvoicesPostRequestBodyShippingCost>(
            InvoicesPostRequestBodyShippingCost.createFromDiscriminatorValue);
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<InvoicesPostRequestBodyShippingDetails>(
            InvoicesPostRequestBodyShippingDetails
                .createFromDiscriminatorValue);
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<InvoicesPostRequestBodyTransferData>(
            InvoicesPostRequestBodyTransferData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<InvoicesPostRequestBodyAccountTaxIds>(
        'account_tax_ids', accountTaxIds);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeBoolValue('auto_advance', value: autoAdvance);
    writer.writeIntValue(
        'automatically_finalizes_at', automaticallyFinalizesAt);
    writer.writeObjectValue<InvoicesPostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<InvoicesPostRequestBodyCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<InvoicesPostRequestBodyCustomFields>(
        'custom_fields', customFields);
    writer.writeIntValue('days_until_due', daysUntilDue);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeStringValue('default_source', defaultSource);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'default_tax_rates', defaultTaxRates);
    writer.writeStringValue('description', description);
    writer.writeObjectValue<InvoicesPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeIntValue('due_date', dueDate);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<InvoicesPostRequestBodyFromInvoice>(
        'from_invoice', fromInvoice);
    writer.writeObjectValue<InvoicesPostRequestBodyIssuer>('issuer', issuer);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('number', number);
    writer.writeStringValue('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<InvoicesPostRequestBodyPaymentSettings>(
        'payment_settings', paymentSettings);
    writer.writeEnumValue<InvoicesPostRequestBodyPendingInvoiceItemsBehavior>(
        'pending_invoice_items_behavior',
        pendingInvoiceItemsBehavior,
        (e) => e?.value);
    writer.writeObjectValue<InvoicesPostRequestBodyRendering>(
        'rendering', rendering);
    writer.writeObjectValue<InvoicesPostRequestBodyShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeObjectValue<InvoicesPostRequestBodyShippingDetails>(
        'shipping_details', shippingDetails);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeStringValue('subscription', subscription);
    writer.writeObjectValue<InvoicesPostRequestBodyTransferData>(
        'transfer_data', transferData);
  }
}
