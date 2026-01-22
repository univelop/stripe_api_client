// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './prices_post_request_body_billing_scheme.dart';
import './prices_post_request_body_currency_options.dart';
import './prices_post_request_body_custom_unit_amount.dart';
import './prices_post_request_body_metadata.dart';
import './prices_post_request_body_product_data.dart';
import './prices_post_request_body_recurring.dart';
import './prices_post_request_body_tax_behavior.dart';
import './prices_post_request_body_tiers.dart';
import './prices_post_request_body_tiers_mode.dart';
import './prices_post_request_body_transform_quantity.dart';

/// auto generated
class PricesPostRequestBody implements Parsable {
  ///  Whether the price can be used for new purchases. Defaults to `true`.
  bool? active;

  ///  Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
  PricesPostRequestBodyBillingScheme? billingScheme;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
  PricesPostRequestBodyCurrencyOptions? currencyOptions;

  ///  When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
  PricesPostRequestBodyCustomUnitAmount? customUnitAmount;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
  String? lookupKey;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  PricesPostRequestBodyMetadata? metadata;

  ///  A brief description of the price, hidden from customers.
  String? nickname;

  ///  The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to.
  String? product;

  ///  These fields can be used to create a new product that this price will belong to.
  PricesPostRequestBodyProductData? productData;

  ///  The recurring components of a price such as `interval` and `usage_type`.
  PricesPostRequestBodyRecurring? recurring;

  ///  Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
  PricesPostRequestBodyTaxBehavior? taxBehavior;

  ///  Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
  Iterable<PricesPostRequestBodyTiers>? tiers;

  ///  Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
  PricesPostRequestBodyTiersMode? tiersMode;

  ///  If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
  bool? transferLookupKey;

  ///  Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
  PricesPostRequestBodyTransformQuantity? transformQuantity;

  ///  A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount`, `unit_amount_decimal`, or `custom_unit_amount` is required, unless `billing_scheme=tiered`.
  int? unitAmount;

  ///  Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
  String? unitAmountDecimal;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PricesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PricesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['billing_scheme'] = (node) => billingScheme =
        node.getEnumValue<PricesPostRequestBodyBillingScheme>((stringValue) =>
            PricesPostRequestBodyBillingScheme.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<PricesPostRequestBodyCurrencyOptions>(
            PricesPostRequestBodyCurrencyOptions.createFromDiscriminatorValue);
    deserializerMap['custom_unit_amount'] = (node) => customUnitAmount =
        node.getObjectValue<PricesPostRequestBodyCustomUnitAmount>(
            PricesPostRequestBodyCustomUnitAmount.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['lookup_key'] = (node) => lookupKey = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PricesPostRequestBodyMetadata>(
            PricesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['nickname'] = (node) => nickname = node.getStringValue();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    deserializerMap['product_data'] = (node) => productData =
        node.getObjectValue<PricesPostRequestBodyProductData>(
            PricesPostRequestBodyProductData.createFromDiscriminatorValue);
    deserializerMap['recurring'] = (node) => recurring =
        node.getObjectValue<PricesPostRequestBodyRecurring>(
            PricesPostRequestBodyRecurring.createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior =
        node.getEnumValue<PricesPostRequestBodyTaxBehavior>((stringValue) =>
            PricesPostRequestBodyTaxBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tiers'] = (node) => tiers =
        node.getCollectionOfObjectValues<PricesPostRequestBodyTiers>(
            PricesPostRequestBodyTiers.createFromDiscriminatorValue);
    deserializerMap['tiers_mode'] = (node) => tiersMode =
        node.getEnumValue<PricesPostRequestBodyTiersMode>((stringValue) =>
            PricesPostRequestBodyTiersMode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['transfer_lookup_key'] =
        (node) => transferLookupKey = node.getBoolValue();
    deserializerMap['transform_quantity'] = (node) => transformQuantity =
        node.getObjectValue<PricesPostRequestBodyTransformQuantity>(
            PricesPostRequestBodyTransformQuantity
                .createFromDiscriminatorValue);
    deserializerMap['unit_amount'] = (node) => unitAmount = node.getIntValue();
    deserializerMap['unit_amount_decimal'] =
        (node) => unitAmountDecimal = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeEnumValue<PricesPostRequestBodyBillingScheme>(
        'billing_scheme', billingScheme, (e) => e?.value);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<PricesPostRequestBodyCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeObjectValue<PricesPostRequestBodyCustomUnitAmount>(
        'custom_unit_amount', customUnitAmount);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('lookup_key', lookupKey);
    writer.writeObjectValue<PricesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('nickname', nickname);
    writer.writeStringValue('product', product);
    writer.writeObjectValue<PricesPostRequestBodyProductData>(
        'product_data', productData);
    writer.writeObjectValue<PricesPostRequestBodyRecurring>(
        'recurring', recurring);
    writer.writeEnumValue<PricesPostRequestBodyTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeCollectionOfObjectValues<PricesPostRequestBodyTiers>(
        'tiers', tiers);
    writer.writeEnumValue<PricesPostRequestBodyTiersMode>(
        'tiers_mode', tiersMode, (e) => e?.value);
    writer.writeBoolValue('transfer_lookup_key', value: transferLookupKey);
    writer.writeObjectValue<PricesPostRequestBodyTransformQuantity>(
        'transform_quantity', transformQuantity);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
  }
}
