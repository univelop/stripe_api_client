// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './custom_unit_amount.dart';
import './price_billing_scheme.dart';
import './price_currency_options.dart';
import './price_metadata.dart';
import './price_object.dart';
import './price_product.dart';
import './price_tax_behavior.dart';
import './price_tier.dart';
import './price_tiers_mode.dart';
import './price_type.dart';
import './recurring.dart';
import './transform_quantity.dart';

/// auto generated
/// Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.[Products](https://api.stripe.com#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.Related guides: [Set up a subscription](https://docs.stripe.com/billing/subscriptions/set-up-subscription), [create an invoice](https://docs.stripe.com/billing/invoices/create), and more about [products and prices](https://docs.stripe.com/products-prices/overview).
class Price implements AdditionalDataHolder, Parsable {
  ///  Whether the price can be used for new purchases.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
  PriceBillingScheme? billingScheme;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
  PriceCurrencyOptions? currencyOptions;

  ///  When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
  CustomUnitAmount? customUnitAmount;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
  String? lookupKey;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PriceMetadata? metadata;

  ///  A brief description of the price, hidden from customers.
  String? nickname;

  ///  String representing the object's type. Objects of the same type share the same value.
  PriceObject? object;

  ///  The ID of the product this price is associated with.
  PriceProduct? product;

  ///  The recurring components of a price such as `interval` and `usage_type`.
  Recurring? recurring;

  ///  Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
  PriceTaxBehavior? taxBehavior;

  ///  Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
  Iterable<PriceTier>? tiers;

  ///  Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
  PriceTiersMode? tiersMode;

  ///  Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
  TransformQuantity? transformQuantity;

  ///  One of `one_time` or `recurring` depending on whether the price is for a one-time purchase or a recurring (subscription) purchase.
  PriceType? type_;

  ///  The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
  int? unitAmount;

  ///  The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
  String? unitAmountDecimal;

  /// Instantiates a new [Price] and sets the default values.
  Price() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Price createFromDiscriminatorValue(ParseNode parseNode) {
    return Price();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['billing_scheme'] = (node) => billingScheme =
        node.getEnumValue<PriceBillingScheme>((stringValue) =>
            PriceBillingScheme.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['currency_options'] = (node) => currencyOptions =
        node.getObjectValue<PriceCurrencyOptions>(
            PriceCurrencyOptions.createFromDiscriminatorValue);
    deserializerMap['custom_unit_amount'] = (node) => customUnitAmount =
        node.getObjectValue<CustomUnitAmount>(
            CustomUnitAmount.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['lookup_key'] = (node) => lookupKey = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PriceMetadata>(
            PriceMetadata.createFromDiscriminatorValue);
    deserializerMap['nickname'] = (node) => nickname = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PriceObject>((stringValue) => PriceObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['product'] = (node) => product =
        node.getObjectValue<PriceProduct>(
            PriceProduct.createFromDiscriminatorValue);
    deserializerMap['recurring'] = (node) => recurring =
        node.getObjectValue<Recurring>(Recurring.createFromDiscriminatorValue);
    deserializerMap['tax_behavior'] = (node) => taxBehavior = node
        .getEnumValue<PriceTaxBehavior>((stringValue) => PriceTaxBehavior.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['tiers'] = (node) => tiers =
        node.getCollectionOfObjectValues<PriceTier>(
            PriceTier.createFromDiscriminatorValue);
    deserializerMap['tiers_mode'] = (node) => tiersMode =
        node.getEnumValue<PriceTiersMode>((stringValue) => PriceTiersMode.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['transform_quantity'] = (node) => transformQuantity =
        node.getObjectValue<TransformQuantity>(
            TransformQuantity.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<PriceType>(
        (stringValue) => PriceType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
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
    writer.writeEnumValue<PriceBillingScheme>(
        'billing_scheme', billingScheme, (e) => e?.value);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<PriceCurrencyOptions>(
        'currency_options', currencyOptions);
    writer.writeObjectValue<CustomUnitAmount>(
        'custom_unit_amount', customUnitAmount);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('lookup_key', lookupKey);
    writer.writeObjectValue<PriceMetadata>('metadata', metadata);
    writer.writeStringValue('nickname', nickname);
    writer.writeEnumValue<PriceObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<PriceProduct>('product', product);
    writer.writeObjectValue<Recurring>('recurring', recurring);
    writer.writeEnumValue<PriceTaxBehavior>(
        'tax_behavior', taxBehavior, (e) => e?.value);
    writer.writeCollectionOfObjectValues<PriceTier>('tiers', tiers);
    writer.writeEnumValue<PriceTiersMode>(
        'tiers_mode', tiersMode, (e) => e?.value);
    writer.writeObjectValue<TransformQuantity>(
        'transform_quantity', transformQuantity);
    writer.writeEnumValue<PriceType>('type', type_, (e) => e?.value);
    writer.writeIntValue('unit_amount', unitAmount);
    writer.writeStringValue('unit_amount_decimal', unitAmountDecimal);
    writer.writeAdditionalData(additionalData);
  }
}
