// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_application_fee_amount.dart';
import './quotes_post_request_body_application_fee_percent.dart';
import './quotes_post_request_body_automatic_tax.dart';
import './quotes_post_request_body_collection_method.dart';
import './quotes_post_request_body_default_tax_rates.dart';
import './quotes_post_request_body_description.dart';
import './quotes_post_request_body_discounts.dart';
import './quotes_post_request_body_footer.dart';
import './quotes_post_request_body_from_quote.dart';
import './quotes_post_request_body_header.dart';
import './quotes_post_request_body_invoice_settings.dart';
import './quotes_post_request_body_line_items.dart';
import './quotes_post_request_body_metadata.dart';
import './quotes_post_request_body_on_behalf_of.dart';
import './quotes_post_request_body_subscription_data.dart';
import './quotes_post_request_body_transfer_data.dart';

/// auto generated
class QuotesPostRequestBody implements Parsable {
  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
  QuotesPostRequestBodyApplicationFeeAmount? applicationFeeAmount;

  ///  A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
  QuotesPostRequestBodyApplicationFeePercent? applicationFeePercent;

  ///  Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
  QuotesPostRequestBodyAutomaticTax? automaticTax;

  ///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
  QuotesPostRequestBodyCollectionMethod? collectionMethod;

  ///  The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
  String? customer;

  ///  The account for which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
  String? customerAccount;

  ///  The tax rates that will apply to any line item that does not have `tax_rates` set.
  QuotesPostRequestBodyDefaultTaxRates? defaultTaxRates;

  ///  A description that will be displayed on the quote PDF. If no value is passed, the default description configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
  QuotesPostRequestBodyDescription? description;

  ///  The discounts applied to the quote.
  QuotesPostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch. If no value is passed, the default expiration date configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
  int? expiresAt;

  ///  A footer that will be displayed on the quote PDF. If no value is passed, the default footer configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
  QuotesPostRequestBodyFooter? footer;

  ///  Clone an existing quote. The new quote will be created in `status=draft`. When using this parameter, you cannot specify any other parameters except for `expires_at`.
  QuotesPostRequestBodyFromQuote? fromQuote;

  ///  A header that will be displayed on the quote PDF. If no value is passed, the default header configured in your [quote template settings](https://dashboard.stripe.com/settings/billing/quote) will be used.
  QuotesPostRequestBodyHeader? header;

  ///  All invoices will be billed using the specified settings.
  QuotesPostRequestBodyInvoiceSettings? invoiceSettings;

  ///  A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
  Iterable<QuotesPostRequestBodyLineItems>? lineItems;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  QuotesPostRequestBodyMetadata? metadata;

  ///  The account on behalf of which to charge.
  QuotesPostRequestBodyOnBehalfOf? onBehalfOf;

  ///  When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
  QuotesPostRequestBodySubscriptionData? subscriptionData;

  ///  ID of the test clock to attach to the quote.
  String? testClock;

  ///  The data with which to automatically create a Transfer for each of the invoices.
  QuotesPostRequestBodyTransferData? transferData;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_fee_amount'] = (node) => applicationFeeAmount =
        node.getObjectValue<QuotesPostRequestBodyApplicationFeeAmount>(
            QuotesPostRequestBodyApplicationFeeAmount
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_percent'] = (node) =>
        applicationFeePercent =
            node.getObjectValue<QuotesPostRequestBodyApplicationFeePercent>(
                QuotesPostRequestBodyApplicationFeePercent
                    .createFromDiscriminatorValue);
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<QuotesPostRequestBodyAutomaticTax>(
            QuotesPostRequestBodyAutomaticTax.createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<QuotesPostRequestBodyCollectionMethod>(
            (stringValue) => QuotesPostRequestBodyCollectionMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getObjectValue<QuotesPostRequestBodyDefaultTaxRates>(
            QuotesPostRequestBodyDefaultTaxRates.createFromDiscriminatorValue);
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<QuotesPostRequestBodyDescription>(
            QuotesPostRequestBodyDescription.createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<QuotesPostRequestBodyDiscounts>(
            QuotesPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['footer'] = (node) => footer =
        node.getObjectValue<QuotesPostRequestBodyFooter>(
            QuotesPostRequestBodyFooter.createFromDiscriminatorValue);
    deserializerMap['from_quote'] = (node) => fromQuote =
        node.getObjectValue<QuotesPostRequestBodyFromQuote>(
            QuotesPostRequestBodyFromQuote.createFromDiscriminatorValue);
    deserializerMap['header'] = (node) => header =
        node.getObjectValue<QuotesPostRequestBodyHeader>(
            QuotesPostRequestBodyHeader.createFromDiscriminatorValue);
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<QuotesPostRequestBodyInvoiceSettings>(
            QuotesPostRequestBodyInvoiceSettings.createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getCollectionOfObjectValues<QuotesPostRequestBodyLineItems>(
            QuotesPostRequestBodyLineItems.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<QuotesPostRequestBodyMetadata>(
            QuotesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<QuotesPostRequestBodyOnBehalfOf>(
            QuotesPostRequestBodyOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['subscription_data'] = (node) => subscriptionData =
        node.getObjectValue<QuotesPostRequestBodySubscriptionData>(
            QuotesPostRequestBodySubscriptionData.createFromDiscriminatorValue);
    deserializerMap['test_clock'] = (node) => testClock = node.getStringValue();
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<QuotesPostRequestBodyTransferData>(
            QuotesPostRequestBodyTransferData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<QuotesPostRequestBodyApplicationFeeAmount>(
        'application_fee_amount', applicationFeeAmount);
    writer.writeObjectValue<QuotesPostRequestBodyApplicationFeePercent>(
        'application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<QuotesPostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<QuotesPostRequestBodyCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<QuotesPostRequestBodyDefaultTaxRates>(
        'default_tax_rates', defaultTaxRates);
    writer.writeObjectValue<QuotesPostRequestBodyDescription>(
        'description', description);
    writer.writeObjectValue<QuotesPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeObjectValue<QuotesPostRequestBodyFooter>('footer', footer);
    writer.writeObjectValue<QuotesPostRequestBodyFromQuote>(
        'from_quote', fromQuote);
    writer.writeObjectValue<QuotesPostRequestBodyHeader>('header', header);
    writer.writeObjectValue<QuotesPostRequestBodyInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeCollectionOfObjectValues<QuotesPostRequestBodyLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<QuotesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<QuotesPostRequestBodyOnBehalfOf>(
        'on_behalf_of', onBehalfOf);
    writer.writeObjectValue<QuotesPostRequestBodySubscriptionData>(
        'subscription_data', subscriptionData);
    writer.writeStringValue('test_clock', testClock);
    writer.writeObjectValue<QuotesPostRequestBodyTransferData>(
        'transfer_data', transferData);
  }
}
