// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_quote_post_request_body_application_fee_amount.dart';
import './with_quote_post_request_body_application_fee_percent.dart';
import './with_quote_post_request_body_automatic_tax.dart';
import './with_quote_post_request_body_collection_method.dart';
import './with_quote_post_request_body_default_tax_rates.dart';
import './with_quote_post_request_body_description.dart';
import './with_quote_post_request_body_discounts.dart';
import './with_quote_post_request_body_footer.dart';
import './with_quote_post_request_body_header.dart';
import './with_quote_post_request_body_invoice_settings.dart';
import './with_quote_post_request_body_line_items.dart';
import './with_quote_post_request_body_metadata.dart';
import './with_quote_post_request_body_on_behalf_of.dart';
import './with_quote_post_request_body_subscription_data.dart';
import './with_quote_post_request_body_transfer_data.dart';

/// auto generated
class WithQuotePostRequestBody implements Parsable {
  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. There cannot be any line items with recurring prices when using this field.
  WithQuotePostRequestBodyApplicationFeeAmount? applicationFeeAmount;

  ///  A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
  WithQuotePostRequestBodyApplicationFeePercent? applicationFeePercent;

  ///  Settings for automatic tax lookup for this quote and resulting invoices and subscriptions.
  WithQuotePostRequestBodyAutomaticTax? automaticTax;

  ///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
  WithQuotePostRequestBodyCollectionMethod? collectionMethod;

  ///  The customer for which this quote belongs to. A customer is required before finalizing the quote. Once specified, it cannot be changed.
  String? customer;

  ///  The account for which this quote belongs to. A customer or account is required before finalizing the quote. Once specified, it cannot be changed.
  String? customerAccount;

  ///  The tax rates that will apply to any line item that does not have `tax_rates` set.
  WithQuotePostRequestBodyDefaultTaxRates? defaultTaxRates;

  ///  A description that will be displayed on the quote PDF.
  WithQuotePostRequestBodyDescription? description;

  ///  The discounts applied to the quote.
  WithQuotePostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
  int? expiresAt;

  ///  A footer that will be displayed on the quote PDF.
  WithQuotePostRequestBodyFooter? footer;

  ///  A header that will be displayed on the quote PDF.
  WithQuotePostRequestBodyHeader? header;

  ///  All invoices will be billed using the specified settings.
  WithQuotePostRequestBodyInvoiceSettings? invoiceSettings;

  ///  A list of line items the customer is being quoted for. Each line item includes information about the product, the quantity, and the resulting cost.
  Iterable<WithQuotePostRequestBodyLineItems>? lineItems;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  WithQuotePostRequestBodyMetadata? metadata;

  ///  The account on behalf of which to charge.
  WithQuotePostRequestBodyOnBehalfOf? onBehalfOf;

  ///  When creating a subscription or subscription schedule, the specified configuration data will be used. There must be at least one line item with a recurring price for a subscription or subscription schedule to be created. A subscription schedule is created if `subscription_data[effective_date]` is present and in the future, otherwise a subscription is created.
  WithQuotePostRequestBodySubscriptionData? subscriptionData;

  ///  The data with which to automatically create a Transfer for each of the invoices.
  WithQuotePostRequestBodyTransferData? transferData;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithQuotePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithQuotePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['application_fee_amount'] = (node) => applicationFeeAmount =
        node.getObjectValue<WithQuotePostRequestBodyApplicationFeeAmount>(
            WithQuotePostRequestBodyApplicationFeeAmount
                .createFromDiscriminatorValue);
    deserializerMap['application_fee_percent'] = (node) =>
        applicationFeePercent =
            node.getObjectValue<WithQuotePostRequestBodyApplicationFeePercent>(
                WithQuotePostRequestBodyApplicationFeePercent
                    .createFromDiscriminatorValue);
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<WithQuotePostRequestBodyAutomaticTax>(
            WithQuotePostRequestBodyAutomaticTax.createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<WithQuotePostRequestBodyCollectionMethod>(
            (stringValue) => WithQuotePostRequestBodyCollectionMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['default_tax_rates'] = (node) => defaultTaxRates =
        node.getObjectValue<WithQuotePostRequestBodyDefaultTaxRates>(
            WithQuotePostRequestBodyDefaultTaxRates
                .createFromDiscriminatorValue);
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<WithQuotePostRequestBodyDescription>(
            WithQuotePostRequestBodyDescription.createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<WithQuotePostRequestBodyDiscounts>(
            WithQuotePostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['footer'] = (node) => footer =
        node.getObjectValue<WithQuotePostRequestBodyFooter>(
            WithQuotePostRequestBodyFooter.createFromDiscriminatorValue);
    deserializerMap['header'] = (node) => header =
        node.getObjectValue<WithQuotePostRequestBodyHeader>(
            WithQuotePostRequestBodyHeader.createFromDiscriminatorValue);
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<WithQuotePostRequestBodyInvoiceSettings>(
            WithQuotePostRequestBodyInvoiceSettings
                .createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getCollectionOfObjectValues<WithQuotePostRequestBodyLineItems>(
            WithQuotePostRequestBodyLineItems.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithQuotePostRequestBodyMetadata>(
            WithQuotePostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<WithQuotePostRequestBodyOnBehalfOf>(
            WithQuotePostRequestBodyOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['subscription_data'] = (node) => subscriptionData =
        node.getObjectValue<WithQuotePostRequestBodySubscriptionData>(
            WithQuotePostRequestBodySubscriptionData
                .createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<WithQuotePostRequestBodyTransferData>(
            WithQuotePostRequestBodyTransferData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithQuotePostRequestBodyApplicationFeeAmount>(
        'application_fee_amount', applicationFeeAmount);
    writer.writeObjectValue<WithQuotePostRequestBodyApplicationFeePercent>(
        'application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<WithQuotePostRequestBodyAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<WithQuotePostRequestBodyCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<WithQuotePostRequestBodyDefaultTaxRates>(
        'default_tax_rates', defaultTaxRates);
    writer.writeObjectValue<WithQuotePostRequestBodyDescription>(
        'description', description);
    writer.writeObjectValue<WithQuotePostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeObjectValue<WithQuotePostRequestBodyFooter>('footer', footer);
    writer.writeObjectValue<WithQuotePostRequestBodyHeader>('header', header);
    writer.writeObjectValue<WithQuotePostRequestBodyInvoiceSettings>(
        'invoice_settings', invoiceSettings);
    writer.writeCollectionOfObjectValues<WithQuotePostRequestBodyLineItems>(
        'line_items', lineItems);
    writer.writeObjectValue<WithQuotePostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<WithQuotePostRequestBodyOnBehalfOf>(
        'on_behalf_of', onBehalfOf);
    writer.writeObjectValue<WithQuotePostRequestBodySubscriptionData>(
        'subscription_data', subscriptionData);
    writer.writeObjectValue<WithQuotePostRequestBodyTransferData>(
        'transfer_data', transferData);
  }
}
