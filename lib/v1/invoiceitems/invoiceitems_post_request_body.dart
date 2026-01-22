// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoiceitems_post_request_body_discounts.dart';
import './invoiceitems_post_request_body_period.dart';
import './invoiceitems_post_request_body_price_data.dart';
import './invoiceitems_post_request_body_pricing.dart';
import './invoiceitems_post_request_body_tax_behavior.dart';
import './invoiceitems_post_request_body_tax_code.dart';

/// auto generated
class InvoiceitemsPostRequestBody implements Parsable {
  ///  The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. Passing in a negative `amount` will reduce the `amount_due` on the invoice.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The ID of the customer to bill for this invoice item.
  String? customer;

  ///  The ID of the account representing the customer to bill for this invoice item.
  String? customerAccount;

  ///  An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
  String? description;

  ///  Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items.
  bool? discountable;

  ///  The coupons and promotion codes to redeem into discounts for the invoice item or invoice line item.
  InvoiceitemsPostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The ID of an existing invoice to add this invoice item to. For subscription invoices, when left blank, the invoice item will be added to the next upcoming scheduled invoice. For standalone invoices, the invoice item won't be automatically added unless you pass `pending_invoice_item_behavior: 'include'` when creating the invoice. This is useful when adding invoice items in response to an invoice.created webhook. You can only add invoice items to draft invoices and there is a maximum of 250 items per invoice.
  String? invoice;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://docs.stripe.com/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://docs.stripe.com/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
  InvoiceitemsPostRequestBodyPeriod? period;

  ///  Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline.
  InvoiceitemsPostRequestBodyPriceData? priceData;

  ///  The pricing information for the invoice item.
  InvoiceitemsPostRequestBodyPricing? pricing;

  ///  Non-negative integer. The quantity of units for the invoice item.
  int? quantity;

  ///  The ID of a subscription to add this invoice item to. When left blank, the invoice item is added to the next upcoming scheduled invoice. When set, scheduled invoices for subscriptions other than the specified subscription will ignore the invoice item. Use this when you want to express that an invoice item has been accrued within the context of a particular subscription.
  String? subscription;

  ///  Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
  InvoiceitemsPostRequestBodyTaxBehavior? taxBehavior;

  ///  A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
  InvoiceitemsPostRequestBodyTaxCode? taxCode;

  ///  The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
  Iterable<String>? taxRates;

  ///  The decimal unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount_decimal` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount_decimal` will reduce the `amount_due` on the invoice. Accepts at most 12 decimal places.
  String? unitAmountDecimal;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceitemsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceitemsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discountable'] =
        (node) => discountable = node.getBoolValue();
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<InvoiceitemsPostRequestBodyDiscounts>(
            InvoiceitemsPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['invoice'] = (node) => invoice = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<InvoiceitemsPostRequestBodyPeriod>(
            InvoiceitemsPostRequestBodyPeriod.createFromDiscriminatorValue);
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<InvoiceitemsPostRequestBodyPriceData>(
            InvoiceitemsPostRequestBodyPriceData.createFromDiscriminatorValue);
    deserializerMap['pricing'] = (node) => pricing =
        node.getObjectValue<InvoiceitemsPostRequestBodyPricing>(
            InvoiceitemsPostRequestBodyPricing.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<InvoiceitemsPostRequestBodyTaxBehavior>(
            (stringValue) => InvoiceitemsPostRequestBodyTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode =
        node.getObjectValue<InvoiceitemsPostRequestBodyTaxCode>(
            InvoiceitemsPostRequestBodyTaxCode.createFromDiscriminatorValue);
    deserializerMap['tax_rates'] =
        (node) => taxRates = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeObjectValue<InvoiceitemsPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('invoice', invoice);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<InvoiceitemsPostRequestBodyPeriod>(
        'period', period);
    writer.writeObjectValue<InvoiceitemsPostRequestBodyPriceData>(
        'price_data', priceData);
    writer.writeObjectValue<InvoiceitemsPostRequestBodyPricing>(
        'pricing', pricing);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('subscription', subscription);
    writer.writeEnumValue<InvoiceitemsPostRequestBodyTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeObjectValue<InvoiceitemsPostRequestBodyTaxCode>(
        'tax_code', taxCode);
    writer.writeCollectionOfPrimitiveValues<String?>('tax_rates', taxRates);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
  }
}
