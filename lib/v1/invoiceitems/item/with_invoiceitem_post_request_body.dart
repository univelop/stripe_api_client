// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoiceitem_post_request_body_discounts.dart';
import './with_invoiceitem_post_request_body_period.dart';
import './with_invoiceitem_post_request_body_price_data.dart';
import './with_invoiceitem_post_request_body_pricing.dart';
import './with_invoiceitem_post_request_body_tax_behavior.dart';
import './with_invoiceitem_post_request_body_tax_code.dart';
import './with_invoiceitem_post_request_body_tax_rates.dart';

/// auto generated
class WithInvoiceitemPostRequestBody implements Parsable {
  ///  The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
  int? amount;

  ///  An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
  String? description;

  ///  Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items. Cannot be set to true for prorations.
  bool? discountable;

  ///  The coupons, promotion codes & existing discounts which apply to the invoice item or invoice line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
  WithInvoiceitemPostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://docs.stripe.com/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://docs.stripe.com/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
  WithInvoiceitemPostRequestBodyPeriod? period;

  ///  Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline.
  WithInvoiceitemPostRequestBodyPriceData? priceData;

  ///  The pricing information for the invoice item.
  WithInvoiceitemPostRequestBodyPricing? pricing;

  ///  Non-negative integer. The quantity of units for the invoice item.
  int? quantity;

  ///  Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
  WithInvoiceitemPostRequestBodyTaxBehavior? taxBehavior;

  ///  A [tax code](https://docs.stripe.com/tax/tax-categories) ID.
  WithInvoiceitemPostRequestBodyTaxCode? taxCode;

  ///  The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item. Pass an empty string to remove previously-defined tax rates.
  WithInvoiceitemPostRequestBodyTaxRates? taxRates;

  ///  The decimal unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This `unit_amount_decimal` will be multiplied by the quantity to get the full amount. Passing in a negative `unit_amount_decimal` will reduce the `amount_due` on the invoice. Accepts at most 12 decimal places.
  String? unitAmountDecimal;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoiceitemPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithInvoiceitemPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['discountable'] =
        (node) => discountable = node.getBoolValue();
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            WithInvoiceitemPostRequestBodyDiscounts>(
        WithInvoiceitemPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<WithInvoiceitemPostRequestBodyPeriod>(
            WithInvoiceitemPostRequestBodyPeriod.createFromDiscriminatorValue);
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            WithInvoiceitemPostRequestBodyPriceData>(
        WithInvoiceitemPostRequestBodyPriceData.createFromDiscriminatorValue);
    deserializerMap['pricing'] = (node) => pricing =
        node.getObjectValue<WithInvoiceitemPostRequestBodyPricing>(
            WithInvoiceitemPostRequestBodyPricing.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<WithInvoiceitemPostRequestBodyTaxBehavior>(
            (stringValue) => WithInvoiceitemPostRequestBodyTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_code'] = (node) => taxCode =
        node.getObjectValue<WithInvoiceitemPostRequestBodyTaxCode>(
            WithInvoiceitemPostRequestBodyTaxCode.createFromDiscriminatorValue);
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            WithInvoiceitemPostRequestBodyTaxRates>(
        WithInvoiceitemPostRequestBodyTaxRates.createFromDiscriminatorValue);
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeObjectValue<WithInvoiceitemPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithInvoiceitemPostRequestBodyPeriod>(
        'period', period);
    writer.writeObjectValue<WithInvoiceitemPostRequestBodyPriceData>(
        'price_data', priceData);
    writer.writeObjectValue<WithInvoiceitemPostRequestBodyPricing>(
        'pricing', pricing);
    writer.writeIntValue('quantity', quantity);
    writer.writeEnumValue<WithInvoiceitemPostRequestBodyTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeObjectValue<WithInvoiceitemPostRequestBodyTaxCode>(
        'tax_code', taxCode);
    writer.writeObjectValue<WithInvoiceitemPostRequestBodyTaxRates>(
        'tax_rates', taxRates);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
  }
}
