// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './discounts_resource_stackable_discount.dart';
import './subscription_item_billing_thresholds.dart';
import './subscription_schedule_configuration_item_metadata.dart';
import './subscription_schedule_configuration_item_price.dart';
import './tax_rate.dart';

/// auto generated
/// A phase item describes the price and quantity of a phase.
class SubscriptionScheduleConfigurationItem
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Define thresholds at which an invoice will be sent, and the related subscription advanced to a new billing period
  SubscriptionItemBillingThresholds? billingThresholds;

  ///  The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
  Iterable<DiscountsResourceStackableDiscount>? discounts;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an item. Metadata on this item will update the underlying subscription item's `metadata` when the phase is entered.
  SubscriptionScheduleConfigurationItemMetadata? metadata;

  ///  ID of the price to which the customer should be subscribed.
  SubscriptionScheduleConfigurationItemPrice? price;

  ///  Quantity of the plan to which the customer should be subscribed.
  int? quantity;

  ///  The tax rates which apply to this `phase_item`. When set, the `default_tax_rates` on the phase do not apply to this `phase_item`.
  Iterable<TaxRate>? taxRates;

  /// Instantiates a new [SubscriptionScheduleConfigurationItem] and sets the default values.
  SubscriptionScheduleConfigurationItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionScheduleConfigurationItem createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionScheduleConfigurationItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<SubscriptionItemBillingThresholds>(
            SubscriptionItemBillingThresholds.createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<DiscountsResourceStackableDiscount>(
            DiscountsResourceStackableDiscount.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SubscriptionScheduleConfigurationItemMetadata>(
            SubscriptionScheduleConfigurationItemMetadata
                .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price =
        node.getObjectValue<SubscriptionScheduleConfigurationItemPrice>(
            SubscriptionScheduleConfigurationItemPrice
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getCollectionOfObjectValues<TaxRate>(
            TaxRate.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionItemBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeCollectionOfObjectValues<DiscountsResourceStackableDiscount>(
        'discounts', discounts);
    writer.writeObjectValue<SubscriptionScheduleConfigurationItemMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<SubscriptionScheduleConfigurationItemPrice>(
        'price', price);
    writer.writeIntValue('quantity', quantity);
    writer.writeCollectionOfObjectValues<TaxRate>('tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
