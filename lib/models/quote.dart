// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_setting_quote_setting.dart';
import './quote_application.dart';
import './quote_collection_method.dart';
import './quote_customer.dart';
import './quote_invoice.dart';
import './quote_line_items.dart';
import './quote_metadata.dart';
import './quote_object.dart';
import './quote_on_behalf_of.dart';
import './quote_status.dart';
import './quote_subscription.dart';
import './quote_subscription_schedule.dart';
import './quote_test_clock.dart';
import './quotes_resource_automatic_tax.dart';
import './quotes_resource_computed.dart';
import './quotes_resource_from_quote.dart';
import './quotes_resource_status_transitions.dart';
import './quotes_resource_subscription_data_subscription_data.dart';
import './quotes_resource_total_details.dart';
import './quotes_resource_transfer_data.dart';

/// auto generated
/// A Quote is a way to model prices that you'd like to provide to a customer.Once accepted, it will automatically create an invoice, subscription or subscription schedule.
class Quote implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Total before any discounts or taxes are applied.
  int? amountSubtotal;

  ///  Total after discounts and taxes are applied.
  int? amountTotal;

  ///  ID of the Connect Application that created the quote.
  QuoteApplication? application;

  ///  The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Only applicable if there are no line items with recurring prices on the quote.
  int? applicationFeeAmount;

  ///  A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. Only applicable if there are line items with recurring prices on the quote.
  double? applicationFeePercent;

  ///  The automatic_tax property
  QuotesResourceAutomaticTax? automaticTax;

  ///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or on finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
  QuoteCollectionMethod? collectionMethod;

  ///  The computed property
  QuotesResourceComputed? computed;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The customer who received this quote. A customer is required to finalize the quote. Once specified, you can't change it.
  QuoteCustomer? customer;

  ///  The account representing the customer who received this quote. A customer or account is required to finalize the quote. Once specified, you can't change it.
  String? customerAccount;

  ///  The tax rates applied to this quote.
  Iterable<String>? defaultTaxRates;

  ///  A description that will be displayed on the quote PDF.
  String? description;

  ///  The discounts applied to this quote.
  Iterable<String>? discounts;

  ///  The date on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
  int? expiresAt;

  ///  A footer that will be displayed on the quote PDF.
  String? footer;

  ///  Details of the quote that was cloned. See the [cloning documentation](https://docs.stripe.com/quotes/clone) for more details.
  QuotesResourceFromQuote? fromQuote;

  ///  A header that will be displayed on the quote PDF.
  String? header;

  ///  Unique identifier for the object.
  String? id;

  ///  The invoice that was created from this quote.
  QuoteInvoice? invoice;

  ///  The invoice_settings property
  InvoiceSettingQuoteSetting? invoiceSettings;

  ///  A list of items the customer is being quoted for.
  QuoteLineItems? lineItems;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  QuoteMetadata? metadata;

  ///  A unique number that identifies this particular quote. This number is assigned once the quote is [finalized](https://docs.stripe.com/quotes/overview#finalize).
  String? number;

  ///  String representing the object's type. Objects of the same type share the same value.
  QuoteObject? object;

  ///  The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
  QuoteOnBehalfOf? onBehalfOf;

  ///  The status of the quote.
  QuoteStatus? status;

  ///  The status_transitions property
  QuotesResourceStatusTransitions? statusTransitions;

  ///  The subscription that was created or updated from this quote.
  QuoteSubscription? subscription;

  ///  The subscription_data property
  QuotesResourceSubscriptionDataSubscriptionData? subscriptionData;

  ///  The subscription schedule that was created or updated from this quote.
  QuoteSubscriptionSchedule? subscriptionSchedule;

  ///  ID of the test clock this quote belongs to.
  QuoteTestClock? testClock;

  ///  The total_details property
  QuotesResourceTotalDetails? totalDetails;

  ///  The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the invoices.
  QuotesResourceTransferData? transferData;

  /// Instantiates a new [Quote] and sets the default values.
  Quote() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Quote createFromDiscriminatorValue(ParseNode parseNode) {
    return Quote();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_subtotal'] =
        (node) => amountSubtotal = node.getIntValue();
    deserializerMap['amount_total'] =
        (node) => amountTotal = node.getIntValue();
    deserializerMap['application'] = (node) => application =
        node.getObjectValue<QuoteApplication>(
            QuoteApplication.createFromDiscriminatorValue);
    deserializerMap['application_fee_amount'] =
        (node) => applicationFeeAmount = node.getIntValue();
    deserializerMap['application_fee_percent'] =
        (node) => applicationFeePercent = node.getDoubleValue();
    deserializerMap['automatic_tax'] = (node) => automaticTax =
        node.getObjectValue<QuotesResourceAutomaticTax>(
            QuotesResourceAutomaticTax.createFromDiscriminatorValue);
    deserializerMap['collection_method'] = (node) => collectionMethod =
        node.getEnumValue<QuoteCollectionMethod>((stringValue) =>
            QuoteCollectionMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['computed'] = (node) => computed =
        node.getObjectValue<QuotesResourceComputed>(
            QuotesResourceComputed.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<QuoteCustomer>(
            QuoteCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['default_tax_rates'] = (node) =>
        defaultTaxRates = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discounts'] =
        (node) => discounts = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['from_quote'] = (node) => fromQuote =
        node.getObjectValue<QuotesResourceFromQuote>(
            QuotesResourceFromQuote.createFromDiscriminatorValue);
    deserializerMap['header'] = (node) => header = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['invoice'] = (node) => invoice =
        node.getObjectValue<QuoteInvoice>(
            QuoteInvoice.createFromDiscriminatorValue);
    deserializerMap['invoice_settings'] = (node) => invoiceSettings =
        node.getObjectValue<InvoiceSettingQuoteSetting>(
            InvoiceSettingQuoteSetting.createFromDiscriminatorValue);
    deserializerMap['line_items'] = (node) => lineItems =
        node.getObjectValue<QuoteLineItems>(
            QuoteLineItems.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<QuoteMetadata>(
            QuoteMetadata.createFromDiscriminatorValue);
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<QuoteObject>((stringValue) => QuoteObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['on_behalf_of'] = (node) => onBehalfOf =
        node.getObjectValue<QuoteOnBehalfOf>(
            QuoteOnBehalfOf.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<QuoteStatus>((stringValue) => QuoteStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<QuotesResourceStatusTransitions>(
            QuotesResourceStatusTransitions.createFromDiscriminatorValue);
    deserializerMap['subscription'] = (node) => subscription =
        node.getObjectValue<QuoteSubscription>(
            QuoteSubscription.createFromDiscriminatorValue);
    deserializerMap['subscription_data'] = (node) => subscriptionData =
        node.getObjectValue<QuotesResourceSubscriptionDataSubscriptionData>(
            QuotesResourceSubscriptionDataSubscriptionData
                .createFromDiscriminatorValue);
    deserializerMap['subscription_schedule'] = (node) => subscriptionSchedule =
        node.getObjectValue<QuoteSubscriptionSchedule>(
            QuoteSubscriptionSchedule.createFromDiscriminatorValue);
    deserializerMap['test_clock'] = (node) => testClock =
        node.getObjectValue<QuoteTestClock>(
            QuoteTestClock.createFromDiscriminatorValue);
    deserializerMap['total_details'] = (node) => totalDetails =
        node.getObjectValue<QuotesResourceTotalDetails>(
            QuotesResourceTotalDetails.createFromDiscriminatorValue);
    deserializerMap['transfer_data'] = (node) => transferData =
        node.getObjectValue<QuotesResourceTransferData>(
            QuotesResourceTransferData.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_subtotal', amountSubtotal);
    writer.writeIntValue('amount_total', amountTotal);
    writer.writeObjectValue<QuoteApplication>('application', application);
    writer.writeIntValue('application_fee_amount', applicationFeeAmount);
    writer.writeDoubleValue('application_fee_percent', applicationFeePercent);
    writer.writeObjectValue<QuotesResourceAutomaticTax>(
        'automatic_tax', automaticTax);
    writer.writeEnumValue<QuoteCollectionMethod>(
        'collection_method', collectionMethod, (e) => e?.value);
    writer.writeObjectValue<QuotesResourceComputed>('computed', computed);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<QuoteCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'default_tax_rates', defaultTaxRates);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('discounts', discounts);
    writer.writeIntValue('expires_at', expiresAt);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<QuotesResourceFromQuote>('from_quote', fromQuote);
    writer.writeStringValue('header', header);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<QuoteInvoice>('invoice', invoice);
    writer.writeObjectValue<InvoiceSettingQuoteSetting>(
        'invoice_settings', invoiceSettings);
    writer.writeObjectValue<QuoteLineItems>('line_items', lineItems);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<QuoteMetadata>('metadata', metadata);
    writer.writeStringValue('number', number);
    writer.writeEnumValue<QuoteObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<QuoteOnBehalfOf>('on_behalf_of', onBehalfOf);
    writer.writeEnumValue<QuoteStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<QuotesResourceStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeObjectValue<QuoteSubscription>('subscription', subscription);
    writer.writeObjectValue<QuotesResourceSubscriptionDataSubscriptionData>(
        'subscription_data', subscriptionData);
    writer.writeObjectValue<QuoteSubscriptionSchedule>(
        'subscription_schedule', subscriptionSchedule);
    writer.writeObjectValue<QuoteTestClock>('test_clock', testClock);
    writer.writeObjectValue<QuotesResourceTotalDetails>(
        'total_details', totalDetails);
    writer.writeObjectValue<QuotesResourceTransferData>(
        'transfer_data', transferData);
    writer.writeAdditionalData(additionalData);
  }
}
