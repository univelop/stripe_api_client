// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './price.dart';
import './subscription_item_billing_thresholds.dart';
import './subscription_item_metadata.dart';
import './subscription_item_object.dart';
import './tax_rate.dart';

/// auto generated
/// Subscription items allow you to create customer subscriptions with more thanone plan, making it easy to represent complex billing relationships.
class SubscriptionItem implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Define thresholds at which an invoice will be sent, and the related subscription advanced to a new billing period
  SubscriptionItemBillingThresholds? billingThresholds;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The end time of this subscription item's current billing period.
  int? currentPeriodEnd;

  ///  The start time of this subscription item's current billing period.
  int? currentPeriodStart;

  ///  The discounts applied to the subscription item. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
  Iterable<String>? discounts;

  ///  Unique identifier for the object.
  String? id;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  SubscriptionItemMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  SubscriptionItemObject? object;

  ///  Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.[Products](https://api.stripe.com#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.Related guides: [Set up a subscription](https://docs.stripe.com/billing/subscriptions/set-up-subscription), [create an invoice](https://docs.stripe.com/billing/invoices/create), and more about [products and prices](https://docs.stripe.com/products-prices/overview).
  Price? price;

  ///  The [quantity](https://docs.stripe.com/subscriptions/quantities) of the plan to which the customer should be subscribed.
  int? quantity;

  ///  The `subscription` this `subscription_item` belongs to.
  String? subscription;

  ///  The tax rates which apply to this `subscription_item`. When set, the `default_tax_rates` on the subscription do not apply to this `subscription_item`.
  Iterable<TaxRate>? taxRates;

  /// Instantiates a new [SubscriptionItem] and sets the default values.
  SubscriptionItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionItem createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<SubscriptionItemBillingThresholds>(
            SubscriptionItemBillingThresholds.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['current_period_end'] =
        (node) => currentPeriodEnd = node.getIntValue();
    deserializerMap['current_period_start'] =
        (node) => currentPeriodStart = node.getIntValue();
    deserializerMap['discounts'] =
        (node) => discounts = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<SubscriptionItemMetadata>(
            SubscriptionItemMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<SubscriptionItemObject>((stringValue) =>
            SubscriptionItemObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['price'] = (node) =>
        price = node.getObjectValue<Price>(Price.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
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
    writer.writeIntValue('created', created);
    writer.writeIntValue('current_period_end', currentPeriodEnd);
    writer.writeIntValue('current_period_start', currentPeriodStart);
    writer.writeCollectionOfPrimitiveValues<String?>('discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<SubscriptionItemMetadata>('metadata', metadata);
    writer.writeEnumValue<SubscriptionItemObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<Price>('price', price);
    writer.writeIntValue('quantity', quantity);
    writer.writeStringValue('subscription', subscription);
    writer.writeCollectionOfObjectValues<TaxRate>('tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
