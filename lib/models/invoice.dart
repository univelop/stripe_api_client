// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './api_errors.dart';
import './automatic_tax.dart';
import './billing_bill_resource_invoicing_parents_invoice_parent.dart';
import './billing_bill_resource_invoicing_taxes_tax.dart';
import './connect_account_reference.dart';
import './discounts_resource_discount_amount.dart';
import './invoice_application.dart';
import './invoice_billing_reason.dart';
import './invoice_collection_method.dart';
import './invoice_customer.dart';
import './invoice_customer_tax_exempt.dart';
import './invoice_default_payment_method.dart';
import './invoice_default_source.dart';
import './invoice_latest_revision.dart';
import './invoice_lines.dart';
import './invoice_metadata.dart';
import './invoice_object.dart';
import './invoice_on_behalf_of.dart';
import './invoice_payments.dart';
import './invoice_setting_custom_field.dart';
import './invoice_status.dart';
import './invoice_test_clock.dart';
import './invoice_threshold_reason.dart';
import './invoices_payment_settings.dart';
import './invoices_resource_confirmation_secret.dart';
import './invoices_resource_from_invoice.dart';
import './invoices_resource_invoice_rendering.dart';
import './invoices_resource_invoice_tax_id.dart';
import './invoices_resource_pretax_credit_amount.dart';
import './invoices_resource_shipping_cost.dart';
import './invoices_resource_status_transitions.dart';
import './shipping.dart';
import './tax_rate.dart';

/// auto generated
/// Invoices are statements of amounts owed by a customer, and are eithergenerated one-off, or generated periodically from a subscription.They contain [invoice items](https://api.stripe.com#invoiceitems), and proration adjustmentsthat may be caused by subscription upgrades/downgrades (if necessary).If your invoice is configured to be billed through automatic charges,Stripe automatically finalizes your invoice and attempts payment. Notethat finalizing the invoice,[when automatic](https://docs.stripe.com/invoicing/integration/automatic-advancement-collection), doesnot happen immediately as the invoice is created. Stripe waitsuntil one hour after the last webhook was successfully sent (or the lastwebhook timed out after failing). If you (and the platforms you may haveconnected to) have no webhooks configured, Stripe waits one hour aftercreation to finalize the invoice.If your invoice is configured to be billed by sending an email, then based on your[email settings](https://dashboard.stripe.com/account/billing/automatic),Stripe will email the invoice to your customer and await payment. Theseemails can contain a link to a hosted page to pay the invoice.Stripe applies any customer credit on the account before determining theamount due for the invoice (i.e., the amount that will be actuallycharged). If the amount due for the invoice is less than Stripe's [minimum allowed chargeper currency](/docs/currencies#minimum-and-maximum-charge-amounts), theinvoice is automatically marked paid, and we add the amount due to thecustomer's credit balance which is applied to the next invoice.More details on the customer's credit balance are[here](https://docs.stripe.com/billing/customer/balance).Related guide: [Send invoices to customers](https://docs.stripe.com/billing/invoices/sending)
class Invoice implements AdditionalDataHolder, Parsable {
  ///  The country of the business associated with this invoice, most often the business creating the invoice.
  String? accountCountry;

  ///  The public name of the business associated with this invoice, most often the business creating the invoice.
  String? accountName;

  ///  The account tax IDs associated with the invoice. Only editable when the invoice is a draft.
  Iterable<String>? accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Final amount due at this time for this invoice. If the invoice's total is smaller than the minimum charge amount, for example, or if there is account credit that can be applied to the invoice, the `amount_due` may be 0. If there is a positive `starting_balance` for the invoice (the customer owes money), the `amount_due` will also take that into account. The charge that gets generated for the invoice will be for the amount specified in `amount_due`.
  int? amountDue;

  ///  Amount that was overpaid on the invoice. The amount overpaid is credited to the customer's credit balance.
  int? amountOverpaid;

  ///  The amount, in cents (or local equivalent), that was paid.
  int? amountPaid;

  ///  The difference between amount_due and amount_paid, in cents (or local equivalent).
  int? amountRemaining;

  ///  This is the sum of all the shipping amounts.
  int? amountShipping;

  ///  ID of the Connect Application that created the invoice.
  InvoiceApplication? application;

  ///  Number of payment attempts made for this invoice, from the perspective of the payment retry schedule. Any payment attempt counts as the first attempt, and subsequently only automatic retries increment the attempt count. In other words, manual payment attempts after the first attempt do not affect the retry schedule. If a failure is returned with a non-retryable return code, the invoice can no longer be retried unless a new payment method is obtained. Retries will continue to be scheduled, and attempt_count will continue to increment, but retries will only be executed if a new payment method is obtained.
  int? attemptCount;

  ///  Whether an attempt has been made to pay the invoice. An invoice is not attempted until 1 hour after the `invoice.created` webhook, for example, so you might not want to display that invoice as unpaid to your users.
  bool? attempted;

  ///  Controls whether Stripe performs [automatic collection](https://docs.stripe.com/invoicing/integration/automatic-advancement-collection) of the invoice. If `false`, the invoice's state doesn't automatically advance without an explicit action.
  bool? autoAdvance;

  ///  The time when this invoice is currently scheduled to be automatically finalized. The field will be `null` if the invoice is not scheduled to finalize in the future. If the invoice is not in the draft state, this field will always be `null` - see `finalized_at` for the time when an already-finalized invoice was finalized.
  int? automaticallyFinalizesAt;

  ///  The automatic_tax property
  AutomaticTax? automaticTax;

  ///  Indicates the reason why the invoice was created.* `manual`: Unrelated to a subscription, for example, created via the invoice editor.* `subscription`: No longer in use. Applies to subscriptions from before May 2018 where no distinction was made between updates, cycles, and thresholds.* `subscription_create`: A new subscription was created.* `subscription_cycle`: A subscription advanced into a new period.* `subscription_threshold`: A subscription reached a billing threshold.* `subscription_update`: A subscription was updated.* `upcoming`: Reserved for upcoming invoices created through the Create Preview Invoice API or when an `invoice.upcoming` event is generated for an upcoming invoice on a subscription.
  InvoiceBillingReason? billingReason;

  ///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
  InvoiceCollectionMethod? collectionMethod;

  ///  The confirmation secret associated with this invoice. Currently, this contains the client_secret of the PaymentIntent that Stripe creates during invoice finalization.
  InvoicesResourceConfirmationSecret? confirmationSecret;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of the customer to bill.
  InvoiceCustomer? customer;

  ///  The ID of the account representing the customer to bill.
  String? customerAccount;

  ///  The customer's address. Until the invoice is finalized, this field will equal `customer.address`. Once the invoice is finalized, this field will no longer be updated.
  Address? customerAddress;

  ///  The customer's email. Until the invoice is finalized, this field will equal `customer.email`. Once the invoice is finalized, this field will no longer be updated.
  String? customerEmail;

  ///  The customer's name. Until the invoice is finalized, this field will equal `customer.name`. Once the invoice is finalized, this field will no longer be updated.
  String? customerName;

  ///  The customer's phone number. Until the invoice is finalized, this field will equal `customer.phone`. Once the invoice is finalized, this field will no longer be updated.
  String? customerPhone;

  ///  The customer's shipping information. Until the invoice is finalized, this field will equal `customer.shipping`. Once the invoice is finalized, this field will no longer be updated.
  Shipping? customerShipping;

  ///  The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated.
  InvoiceCustomerTaxExempt? customerTaxExempt;

  ///  The customer's tax IDs. Until the invoice is finalized, this field will contain the same tax IDs as `customer.tax_ids`. Once the invoice is finalized, this field will no longer be updated.
  Iterable<InvoicesResourceInvoiceTaxId>? customerTaxIds;

  ///  Custom fields displayed on the invoice.
  Iterable<InvoiceSettingCustomField>? customFields;

  ///  ID of the default payment method for the invoice. It must belong to the customer associated with the invoice. If not set, defaults to the subscription's default payment method, if any, or to the default payment method in the customer's invoice settings.
  InvoiceDefaultPaymentMethod? defaultPaymentMethod;

  ///  ID of the default payment source for the invoice. It must belong to the customer associated with the invoice and be in a chargeable state. If not set, defaults to the subscription's default source, if any, or to the customer's default source.
  InvoiceDefaultSource? defaultSource;

  ///  The tax rates applied to this invoice, if any.
  Iterable<TaxRate>? defaultTaxRates;

  ///  An arbitrary string attached to the object. Often useful for displaying to users. Referenced as 'memo' in the Dashboard.
  String? description;

  ///  The discounts applied to the invoice. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
  Iterable<String>? discounts;

  ///  The date on which payment for this invoice is due. This value will be `null` for invoices where `collection_method=charge_automatically`.
  int? dueDate;

  ///  The date when this invoice is in effect. Same as `finalized_at` unless overwritten. When defined, this value replaces the system-generated 'Date of issue' printed on the invoice PDF and receipt.
  int? effectiveAt;

  ///  Ending customer balance after the invoice is finalized. Invoices are finalized approximately an hour after successful webhook delivery or when payment collection is attempted for the invoice. If the invoice has not been finalized yet, this will be null.
  int? endingBalance;

  ///  Footer displayed on the invoice.
  String? footer;

  ///  Details of the invoice that was cloned. See the [revision documentation](https://docs.stripe.com/invoicing/invoice-revisions) for more details.
  InvoicesResourceFromInvoice? fromInvoice;

  ///  The URL for the hosted invoice page, which allows customers to view and pay an invoice. If the invoice has not been finalized yet, this will be null.
  String? hostedInvoiceUrl;

  ///  Unique identifier for the object. For preview invoices created using the [create preview](https://stripe.com/docs/api/invoices/create_preview) endpoint, this id will be prefixed with `upcoming_in`.
  String? id;

  ///  The link to download the PDF for the invoice. If the invoice has not been finalized yet, this will be null.
  String? invoicePdf;

  ///  The issuer property
  ConnectAccountReference? issuer;

  ///  The error encountered during the previous attempt to finalize the invoice. This field is cleared when the invoice is successfully finalized.
  ApiErrors? lastFinalizationError;

  ///  The ID of the most recent non-draft revision of this invoice
  InvoiceLatestRevision? latestRevision;

  ///  The individual line items that make up the invoice. `lines` is sorted as follows: (1) pending invoice items (including prorations) in reverse chronological order, (2) subscription items in reverse chronological order, and (3) invoice items added after invoice creation in chronological order.
  InvoiceLines? lines;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  InvoiceMetadata? metadata;

  ///  The time at which payment will next be attempted. This value will be `null` for invoices where `collection_method=send_invoice`.
  int? nextPaymentAttempt;

  ///  A unique, identifying string that appears on emails sent to the customer for this invoice. This starts with the customer's unique invoice_prefix if it is specified.
  String? number;

  ///  String representing the object's type. Objects of the same type share the same value.
  InvoiceObject? object;

  ///  The account (if any) for which the funds of the invoice payment are intended. If set, the invoice will be presented with the branding and support information of the specified account. See the [Invoices with Connect](https://docs.stripe.com/billing/invoices/connect) documentation for details.
  InvoiceOnBehalfOf? onBehalfOf;

  ///  The parent that generated this invoice
  BillingBillResourceInvoicingParentsInvoiceParent? parent;

  ///  Payments for this invoice
  InvoicePayments? payments;

  ///  The payment_settings property
  InvoicesPaymentSettings? paymentSettings;

  ///  End of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
  int? periodEnd;

  ///  Start of the usage period during which invoice items were added to this invoice. This looks back one period for a subscription invoice. Use the [line item period](/api/invoices/line_item#invoice_line_item_object-period) to get the service period for each price.
  int? periodStart;

  ///  Total amount of all post-payment credit notes issued for this invoice.
  int? postPaymentCreditNotesAmount;

  ///  Total amount of all pre-payment credit notes issued for this invoice.
  int? prePaymentCreditNotesAmount;

  ///  This is the transaction number that appears on email receipts sent for this invoice.
  String? receiptNumber;

  ///  The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
  InvoicesResourceInvoiceRendering? rendering;

  ///  The details of the cost of shipping, including the ShippingRate applied on the invoice.
  InvoicesResourceShippingCost? shippingCost;

  ///  Shipping details for the invoice. The Invoice PDF will use the `shipping_details` value if it is set, otherwise the PDF will render the shipping address from the customer.
  Shipping? shippingDetails;

  ///  Starting customer balance before the invoice is finalized. If the invoice has not been finalized yet, this will be the current customer balance. For revision invoices, this also includes any customer balance that was applied to the original invoice.
  int? startingBalance;

  ///  Extra information about an invoice for the customer's credit card statement.
  String? statementDescriptor;

  ///  The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://docs.stripe.com/billing/invoices/workflow#workflow-overview)
  InvoiceStatus? status;

  ///  The status_transitions property
  InvoicesResourceStatusTransitions? statusTransitions;

  ///  Total of all subscriptions, invoice items, and prorations on the invoice before any invoice level discount or exclusive tax is applied. Item discounts are already incorporated
  int? subtotal;

  ///  The integer amount in cents (or local equivalent) representing the subtotal of the invoice before any invoice level discount or tax is applied. Item discounts are already incorporated
  int? subtotalExcludingTax;

  ///  ID of the test clock this invoice belongs to.
  InvoiceTestClock? testClock;

  ///  The threshold_reason property
  InvoiceThresholdReason? thresholdReason;

  ///  Total after discounts and taxes.
  int? total;

  ///  The aggregate amounts calculated per discount across all line items.
  Iterable<DiscountsResourceDiscountAmount>? totalDiscountAmounts;

  ///  The integer amount in cents (or local equivalent) representing the total amount of the invoice including all discounts but excluding all tax.
  int? totalExcludingTax;

  ///  Contains pretax credit amounts (ex: discount, credit grants, etc) that apply to this invoice. This is a combined list of total_pretax_credit_amounts across all invoice line items.
  Iterable<InvoicesResourcePretaxCreditAmount>? totalPretaxCreditAmounts;

  ///  The aggregate tax information of all line items.
  Iterable<BillingBillResourceInvoicingTaxesTax>? totalTaxes;

  ///  Invoices are automatically paid or sent 1 hour after webhooks are delivered, or until all webhook delivery attempts have [been exhausted](https://docs.stripe.com/billing/webhooks#understand). This field tracks the time when webhooks for this invoice were successfully delivered. If the invoice had no webhooks to deliver, this will be set while the invoice is being created.
  int? webhooksDeliveredAt;

  /// Instantiates a new [Invoice] and sets the default values.
  Invoice() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Invoice createFromDiscriminatorValue(ParseNode parseNode) {
    return Invoice();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_country'] =
        (node) => accountCountry = node.getStringValue();
    deserializerMap['account_name'] =
        (node) => accountName = node.getStringValue();
    deserializerMap['account_tax_ids'] =
        (node) => accountTaxIds = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['amount_due'] = (node) => amountDue = node.getIntValue();
    deserializerMap['amount_overpaid'] =
        (node) => amountOverpaid = node.getIntValue();
    deserializerMap['amount_paid'] = (node) => amountPaid = node.getIntValue();
    deserializerMap['amount_remaining'] =
        (node) => amountRemaining = node.getIntValue();
    deserializerMap['amount_shipping'] =
        (node) => amountShipping = node.getIntValue();
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<InvoiceApplication>(
            InvoiceApplication.createFromDiscriminatorValue);
    deserializerMap['attempt_count'] =
        (node) => attemptCount = node.getIntValue();
    deserializerMap['attempted'] = (node) => attempted = node.getBoolValue();
    deserializerMap['auto_advance'] =
        (node) => autoAdvance = node.getBoolValue();
    deserializerMap['automatically_finalizes_at'] =
        (node) => automaticallyFinalizesAt = node.getIntValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<AutomaticTax>(
            AutomaticTax.createFromDiscriminatorValue);
    deserializerMap['billing_reason'] = (node) => billingReason =
        node.getEnumValue<InvoiceBillingReason>((stringValue) =>
            InvoiceBillingReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<InvoiceCollectionMethod>((stringValue) =>
            InvoiceCollectionMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['confirmation_secret'] = (node) => confirmationSecret =
        node.getObjectValue<InvoicesResourceConfirmationSecret>(
            InvoicesResourceConfirmationSecret.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<InvoiceCustomer>(
            InvoiceCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['customer_address'] = (node) => customerAddress =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['customer_email'] =
        (node) => customerEmail = node.getStringValue();
    deserializerMap['customer_name'] =
        (node) => customerName = node.getStringValue();
    deserializerMap['customer_phone'] =
        (node) => customerPhone = node.getStringValue();
    deserializerMap['customer_shipping'] = (node) => customerShipping =
        node.getObjectValue<Shipping>(Shipping.createFromDiscriminatorValue);
    deserializerMap['customer_tax_exempt'] = (node) => customerTaxExempt =
        node.getEnumValue<InvoiceCustomerTaxExempt>((stringValue) =>
            InvoiceCustomerTaxExempt.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['customer_tax_ids'] = (node) => customerTaxIds =
        node.getCollectionOfObjectValues<InvoicesResourceInvoiceTaxId>(
            InvoicesResourceInvoiceTaxId.createFromDiscriminatorValue);
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getCollectionOfObjectValues<InvoiceSettingCustomField>(
            InvoiceSettingCustomField.createFromDiscriminatorValue);
    deserializerMap['default_payment_method'] = (node) => defaultPaymentMethod =
        node.getObjectValue<InvoiceDefaultPaymentMethod>(
            InvoiceDefaultPaymentMethod.createFromDiscriminatorValue);
    deserializerMap['default_source'] = (node) => defaultSource =
        node.getObjectValue<InvoiceDefaultSource>(
            InvoiceDefaultSource.createFromDiscriminatorValue);
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getCollectionOfObjectValues<TaxRate>(
            TaxRate.createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discounts'] =
        (node) => discounts = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['due_date'] = (node) => dueDate = node.getIntValue();
    deserializerMap['effective_at'] =
        (node) => effectiveAt = node.getIntValue();
    deserializerMap['ending_balance'] =
        (node) => endingBalance = node.getIntValue();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['from_invoice'] = (node) => fromInvoice =
        node.getObjectValue<InvoicesResourceFromInvoice>(
            InvoicesResourceFromInvoice.createFromDiscriminatorValue);
    deserializerMap['hosted_invoice_url'] =
        (node) => hostedInvoiceUrl = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice_pdf'] =
        (node) => invoicePdf = node.getStringValue();
    deserializerMap['issuer'] = (node) => issuer =
        node.getObjectValue<ConnectAccountReference>(
            ConnectAccountReference.createFromDiscriminatorValue);
    deserializerMap['last_finalization_error'] = (node) =>
        lastFinalizationError = node
            .getObjectValue<ApiErrors>(ApiErrors.createFromDiscriminatorValue);
    deserializerMap['latest_revision'] = (node) => latestRevision =
        node.getObjectValue<InvoiceLatestRevision>(
            InvoiceLatestRevision.createFromDiscriminatorValue);
    deserializerMap['lines'] = (node) => lines =
        node.getObjectValue<InvoiceLines>(
            InvoiceLines.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<InvoiceMetadata>(
            InvoiceMetadata.createFromDiscriminatorValue);
    deserializerMap['next_payment_attempt'] =
        (node) => nextPaymentAttempt = node.getIntValue();
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<InvoiceObject>((stringValue) => InvoiceObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<InvoiceOnBehalfOf>(
            InvoiceOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['parent'] = (node) => parent =
        node.getObjectValue<BillingBillResourceInvoicingParentsInvoiceParent>(
            BillingBillResourceInvoicingParentsInvoiceParent
                .createFromDiscriminatorValue);
    deserializerMap['payments'] = (node) => payments =
        node.getObjectValue<InvoicePayments>(
            InvoicePayments.createFromDiscriminatorValue);
    deserializerMap['payment_settings'] = (node) => paymentSettings =
        node.getObjectValue<InvoicesPaymentSettings>(
            InvoicesPaymentSettings.createFromDiscriminatorValue);
    deserializerMap['period_end'] = (node) => periodEnd = node.getIntValue();
    deserializerMap['period_start'] =
        (node) => periodStart = node.getIntValue();
    deserializerMap['post_payment_credit_notes_amount'] =
        (node) => postPaymentCreditNotesAmount = node.getIntValue();
    deserializerMap['pre_payment_credit_notes_amount'] =
        (node) => prePaymentCreditNotesAmount = node.getIntValue();
    deserializerMap['receipt_number'] =
        (node) => receiptNumber = node.getStringValue();
    deserializerMap['rendering'] = (node) => rendering =
        node.getObjectValue<InvoicesResourceInvoiceRendering>(
            InvoicesResourceInvoiceRendering.createFromDiscriminatorValue);
    deserializerMap['shipping_cost'] = (node) => shippingCost =
        node.getObjectValue<InvoicesResourceShippingCost>(
            InvoicesResourceShippingCost.createFromDiscriminatorValue);
    deserializerMap['shipping_details'] = (node) => shippingDetails =
        node.getObjectValue<Shipping>(Shipping.createFromDiscriminatorValue);
    deserializerMap['starting_balance'] =
        (node) => startingBalance = node.getIntValue();
    deserializerMap['statement_descriptor'] =
        (node) => statementDescriptor = node.getStringValue();
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<InvoiceStatus>((stringValue) => InvoiceStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<InvoicesResourceStatusTransitions>(
            InvoicesResourceStatusTransitions.createFromDiscriminatorValue);
    deserializerMap['subtotal'] = (node) => subtotal = node.getIntValue();
    deserializerMap['subtotal_excluding_tax'] =
        (node) => subtotalExcludingTax = node.getIntValue();
    deserializerMap['test_clock'] = (node) => testClock =
        node.getObjectValue<InvoiceTestClock>(
            InvoiceTestClock.createFromDiscriminatorValue);
    deserializerMap['threshold_reason'] = (node) => thresholdReason =
        node.getObjectValue<InvoiceThresholdReason>(
            InvoiceThresholdReason.createFromDiscriminatorValue);
    deserializerMap['total'] = (node) => total = node.getIntValue();
    deserializerMap['total_discount_amounts'] = (node) => totalDiscountAmounts =
        node.getCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
            DiscountsResourceDiscountAmount.createFromDiscriminatorValue);
    deserializerMap['total_excluding_tax'] =
        (node) => totalExcludingTax = node.getIntValue();
    deserializerMap['total_pretax_credit_amounts'] = (node) =>
        totalPretaxCreditAmounts = node.getCollectionOfObjectValues<
                InvoicesResourcePretaxCreditAmount>(
            InvoicesResourcePretaxCreditAmount.createFromDiscriminatorValue);
    deserializerMap['total_taxes'] = (node) => totalTaxes =
        node.getCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
            BillingBillResourceInvoicingTaxesTax.createFromDiscriminatorValue);
    deserializerMap['webhooks_delivered_at'] =
        (node) => webhooksDeliveredAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_country', accountCountry);
    writer.writeStringValue('account_name', accountName);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'account_tax_ids', accountTaxIds);
    writer.writeIntValue('amount_due', amountDue);
    writer.writeIntValue('amount_overpaid', amountOverpaid);
    writer.writeIntValue('amount_paid', amountPaid);
    writer.writeIntValue('amount_remaining', amountRemaining);
    writer.writeIntValue('amount_shipping', amountShipping);
    writer.writeObjectValue<InvoiceApplication>('application', application);
    writer.writeIntValue('attempt_count', attemptCount);
    writer.writeBoolValue('attempted', value: attempted);
    writer.writeBoolValue('auto_advance', value: autoAdvance);
    writer.writeIntValue(
        'automatically_finalizes_at', automaticallyFinalizesAt);
    writer.writeObjectValue<AutomaticTax>('automatic_tax', automaticTax);
    writer.writeEnumValue<InvoiceBillingReason>(
        'billing_reason', billingReason, (e) => e?.value);
    writer.writeEnumValue<InvoiceCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeObjectValue<InvoicesResourceConfirmationSecret>(
        'confirmation_secret', confirmationSecret);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<InvoiceCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<Address>('customer_address', customerAddress);
    writer.writeStringValue('customer_email', customerEmail);
    writer.writeStringValue('customer_name', customerName);
    writer.writeStringValue('customer_phone', customerPhone);
    writer.writeObjectValue<Shipping>('customer_shipping', customerShipping);
    writer.writeEnumValue<InvoiceCustomerTaxExempt>(
        'customer_tax_exempt', customerTaxExempt, (e) => e?.value);
    writer.writeCollectionOfObjectValues<InvoicesResourceInvoiceTaxId>(
        'customer_tax_ids', customerTaxIds);
    writer.writeCollectionOfObjectValues<InvoiceSettingCustomField>(
        'custom_fields', customFields);
    writer.writeObjectValue<InvoiceDefaultPaymentMethod>(
        'default_payment_method', defaultPaymentMethod);
    writer.writeObjectValue<InvoiceDefaultSource>(
        'default_source', defaultSource);
    writer.writeCollectionOfObjectValues<TaxRate>(
        'default_tax_rates', defaultTaxRates);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('discounts', discounts);
    writer.writeIntValue('due_date', dueDate);
    writer.writeIntValue('effective_at', effectiveAt);
    writer.writeIntValue('ending_balance', endingBalance);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<InvoicesResourceFromInvoice>(
        'from_invoice', fromInvoice);
    writer.writeStringValue('hosted_invoice_url', hostedInvoiceUrl);
    writer.writeStringValue('id', id);
    writer.writeStringValue('invoice_pdf', invoicePdf);
    writer.writeObjectValue<ConnectAccountReference>('issuer', issuer);
    writer.writeObjectValue<ApiErrors>(
        'last_finalization_error', lastFinalizationError);
    writer.writeObjectValue<InvoiceLatestRevision>(
        'latest_revision', latestRevision);
    writer.writeObjectValue<InvoiceLines>('lines', lines);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<InvoiceMetadata>('metadata', metadata);
    writer.writeIntValue('next_payment_attempt', nextPaymentAttempt);
    writer.writeStringValue('number', number);
    writer.writeEnumValue<InvoiceObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<InvoiceOnBehalfOf>('on_behalf_of', onBehalfOf);
    writer.writeObjectValue<BillingBillResourceInvoicingParentsInvoiceParent>(
        'parent', parent);
    writer.writeObjectValue<InvoicePayments>('payments', payments);
    writer.writeObjectValue<InvoicesPaymentSettings>(
        'payment_settings', paymentSettings);
    writer.writeIntValue('period_end', periodEnd);
    writer.writeIntValue('period_start', periodStart);
    writer.writeIntValue(
        'post_payment_credit_notes_amount', postPaymentCreditNotesAmount);
    writer.writeIntValue(
        'pre_payment_credit_notes_amount', prePaymentCreditNotesAmount);
    writer.writeStringValue('receipt_number', receiptNumber);
    writer.writeObjectValue<InvoicesResourceInvoiceRendering>(
        'rendering', rendering);
    writer.writeObjectValue<InvoicesResourceShippingCost>(
        'shipping_cost', shippingCost);
    writer.writeObjectValue<Shipping>('shipping_details', shippingDetails);
    writer.writeIntValue('starting_balance', startingBalance);
    writer.writeStringValue('statement_descriptor', statementDescriptor);
    writer.writeEnumValue<InvoiceStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<InvoicesResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeIntValue('subtotal', subtotal);
    writer.writeIntValue('subtotal_excluding_tax', subtotalExcludingTax);
    writer.writeObjectValue<InvoiceTestClock>('test_clock', testClock);
    writer.writeObjectValue<InvoiceThresholdReason>(
        'threshold_reason', thresholdReason);
    writer.writeIntValue('total', total);
    writer.writeCollectionOfObjectValues<DiscountsResourceDiscountAmount>(
        'total_discount_amounts', totalDiscountAmounts);
    writer.writeIntValue('total_excluding_tax', totalExcludingTax);
    writer.writeCollectionOfObjectValues<InvoicesResourcePretaxCreditAmount>(
        'total_pretax_credit_amounts', totalPretaxCreditAmounts);
    writer.writeCollectionOfObjectValues<BillingBillResourceInvoicingTaxesTax>(
        'total_taxes', totalTaxes);
    writer.writeIntValue('webhooks_delivered_at', webhooksDeliveredAt);
    writer.writeAdditionalData(additionalData);
  }
}
