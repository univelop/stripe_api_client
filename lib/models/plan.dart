// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './plan_billing_scheme.dart';
import './plan_interval.dart';
import './plan_metadata.dart';
import './plan_object.dart';
import './plan_product.dart';
import './plan_tier.dart';
import './plan_tiers_mode.dart';
import './plan_usage_type.dart';
import './transform_usage.dart';

/// auto generated
/// You can now model subscriptions more flexibly using the [Prices API](https://api.stripe.com#prices). It replaces the Plans API and is backwards compatible to simplify your migration.Plans define the base price, currency, and billing cycle for recurring purchases of products.[Products](https://api.stripe.com#products) help you track inventory or provisioning, and plans help you track pricing. Different physical goods or levels of service should be represented by products, and pricing options should be represented by plans. This approach lets you change prices without having to change your provisioning scheme.For example, you might have a single "gold" product that has plans for $10/month, $100/year, €9/month, and €90/year.Related guides: [Set up a subscription](https://docs.stripe.com/billing/subscriptions/set-up-subscription) and more about [products and prices](https://docs.stripe.com/products-prices/overview).
class Plan implements AdditionalDataHolder, Parsable {
  ///  Whether the plan can be used for new purchases.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The unit amount in cents (or local equivalent) to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
  int? amount;

  ///  The unit amount in cents (or local equivalent) to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
  String? amountDecimal;

  ///  Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
  PlanBillingScheme? billingScheme;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Unique identifier for the object.
  String? id;

  ///  The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
  PlanInterval? interval;

  ///  The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
  int? intervalCount;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PlanMetadata? metadata;

  ///  The meter tracking the usage of a metered price
  String? meter;

  ///  A brief description of the plan, hidden from customers.
  String? nickname;

  ///  String representing the object's type. Objects of the same type share the same value.
  PlanObject? object;

  ///  The product whose pricing this plan determines.
  PlanProduct? product;

  ///  Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
  Iterable<PlanTier>? tiers;

  ///  Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
  PlanTiersMode? tiersMode;

  ///  Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
  TransformUsage? transformUsage;

  ///  Default number of trial days when subscribing a customer to this plan using [`trial_from_plan=true`](https://docs.stripe.com/api#create_subscription-trial_from_plan).
  int? trialPeriodDays;

  ///  Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
  PlanUsageType? usageType;

  /// Instantiates a new [Plan] and sets the default values.
  Plan() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Plan createFromDiscriminatorValue(ParseNode parseNode) {
    return Plan();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_decimal'] =
        (node) => amountDecimal = node.getStringValue();
    deserializerMap['billing_scheme'] = (node) => billingScheme =
        node.getEnumValue<PlanBillingScheme>((stringValue) => PlanBillingScheme
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['interval'] = (node) => interval =
        node.getEnumValue<PlanInterval>((stringValue) => PlanInterval.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['interval_count'] =
        (node) => intervalCount = node.getIntValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PlanMetadata>(
            PlanMetadata.createFromDiscriminatorValue);
    deserializerMap['meter'] = (node) => meter = node.getStringValue();
    deserializerMap['nickname'] = (node) => nickname = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PlanObject>((stringValue) => PlanObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['product'] = (node) => product = node
        .getObjectValue<PlanProduct>(PlanProduct.createFromDiscriminatorValue);
    deserializerMap['tiers'] = (node) => tiers =
        node.getCollectionOfObjectValues<PlanTier>(
            PlanTier.createFromDiscriminatorValue);
    deserializerMap['tiers_mode'] = (node) => tiersMode =
        node.getEnumValue<PlanTiersMode>((stringValue) => PlanTiersMode.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['transform_usage'] = (node) => transformUsage =
        node.getObjectValue<TransformUsage>(
            TransformUsage.createFromDiscriminatorValue);
    deserializerMap['trial_period_days'] =
        (node) => trialPeriodDays = node.getIntValue();
    deserializerMap['usage_type'] = (node) => usageType =
        node.getEnumValue<PlanUsageType>((stringValue) => PlanUsageType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('active', value: active);
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('amount_decimal', amountDecimal);
    writer.writeEnumValue<PlanBillingScheme>(
        'billing_scheme', billingScheme, (e) => e?.value);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('id', id);
    writer.writeEnumValue<PlanInterval>('interval', interval, (e) => e?.value);
    writer.writeIntValue('interval_count', intervalCount);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PlanMetadata>('metadata', metadata);
    writer.writeStringValue('meter', meter);
    writer.writeStringValue('nickname', nickname);
    writer.writeEnumValue<PlanObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<PlanProduct>('product', product);
    writer.writeCollectionOfObjectValues<PlanTier>('tiers', tiers);
    writer.writeEnumValue<PlanTiersMode>(
        'tiers_mode', tiersMode, (e) => e?.value);
    writer.writeObjectValue<TransformUsage>('transform_usage', transformUsage);
    writer.writeIntValue('trial_period_days', trialPeriodDays);
    writer.writeEnumValue<PlanUsageType>(
        'usage_type', usageType, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
