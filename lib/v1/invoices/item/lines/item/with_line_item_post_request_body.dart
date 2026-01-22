// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_line_item_post_request_body_discounts.dart';
import './with_line_item_post_request_body_period.dart';
import './with_line_item_post_request_body_price_data.dart';
import './with_line_item_post_request_body_pricing.dart';
import './with_line_item_post_request_body_tax_amounts.dart';
import './with_line_item_post_request_body_tax_rates.dart';

/// auto generated
class WithLineItemPostRequestBody implements Parsable {
  ///  The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
  int? amount;

  ///  An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
  String? description;

  ///  Controls whether discounts apply to this line item. Defaults to false for prorations or negative line items, and true for all other line items. Cannot be set to true for prorations.
  bool? discountable;

  ///  The coupons, promotion codes & existing discounts which apply to the line item. Item discounts are applied before invoice discounts. Pass an empty string to remove previously-defined discounts.
  WithLineItemPostRequestBodyDiscounts? discounts;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://docs.stripe.com/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
  String? metadata;

  ///  The period associated with this invoice item. When set to different values, the period will be rendered on the invoice. If you have [Stripe Revenue Recognition](https://docs.stripe.com/revenue-recognition) enabled, the period will be used to recognize and defer revenue. See the [Revenue Recognition documentation](https://docs.stripe.com/revenue-recognition/methodology/subscriptions-and-invoicing) for details.
  WithLineItemPostRequestBodyPeriod? period;

  ///  Data used to generate a new [Price](https://docs.stripe.com/api/prices) object inline.
  WithLineItemPostRequestBodyPriceData? priceData;

  ///  The pricing information for the invoice item.
  WithLineItemPostRequestBodyPricing? pricing;

  ///  Non-negative integer. The quantity of units for the line item.
  int? quantity;

  ///  A list of up to 10 tax amounts for this line item. This can be useful if you calculate taxes on your own or use a third-party to calculate them. You cannot set tax amounts if any line item has [tax_rates](https://docs.stripe.com/api/invoices/line_item#invoice_line_item_object-tax_rates) or if the invoice has [default_tax_rates](https://docs.stripe.com/api/invoices/object#invoice_object-default_tax_rates) or uses [automatic tax](https://docs.stripe.com/tax/invoicing). Pass an empty string to remove previously defined tax amounts.
  WithLineItemPostRequestBodyTaxAmounts? taxAmounts;

  ///  The tax rates which apply to the line item. When set, the `default_tax_rates` on the invoice do not apply to this line item. Pass an empty string to remove previously-defined tax rates.
  WithLineItemPostRequestBodyTaxRates? taxRates;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithLineItemPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithLineItemPostRequestBody();
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
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<WithLineItemPostRequestBodyDiscounts>(
            WithLineItemPostRequestBodyDiscounts.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<WithLineItemPostRequestBodyPeriod>(
            WithLineItemPostRequestBodyPeriod.createFromDiscriminatorValue);
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<WithLineItemPostRequestBodyPriceData>(
            WithLineItemPostRequestBodyPriceData.createFromDiscriminatorValue);
    deserializerMap['pricing'] = (node) => pricing =
        node.getObjectValue<WithLineItemPostRequestBodyPricing>(
            WithLineItemPostRequestBodyPricing.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_amounts'] = (node) => taxAmounts =
        node.getObjectValue<WithLineItemPostRequestBodyTaxAmounts>(
            WithLineItemPostRequestBodyTaxAmounts.createFromDiscriminatorValue);
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getObjectValue<WithLineItemPostRequestBodyTaxRates>(
            WithLineItemPostRequestBodyTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('description', description);
    writer.writeBoolValue('discountable', value: discountable);
    writer.writeObjectValue<WithLineItemPostRequestBodyDiscounts>(
        'discounts', discounts);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeObjectValue<WithLineItemPostRequestBodyPeriod>(
        'period', period);
    writer.writeObjectValue<WithLineItemPostRequestBodyPriceData>(
        'price_data', priceData);
    writer.writeObjectValue<WithLineItemPostRequestBodyPricing>(
        'pricing', pricing);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<WithLineItemPostRequestBodyTaxAmounts>(
        'tax_amounts', taxAmounts);
    writer.writeObjectValue<WithLineItemPostRequestBodyTaxRates>(
        'tax_rates', taxRates);
  }
}
