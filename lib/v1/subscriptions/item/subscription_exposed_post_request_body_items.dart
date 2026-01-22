// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_items_billing_thresholds.dart';
import './subscription_exposed_post_request_body_items_discounts.dart';
import './subscription_exposed_post_request_body_items_price_data.dart';
import './subscription_exposed_post_request_body_items_tax_rates.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_thresholds property
  SubscriptionExposedPostRequestBodyItemsBillingThresholds? billingThresholds;

  ///  The clear_usage property
  bool? clearUsage;

  ///  The deleted property
  bool? deleted;

  ///  The discounts property
  SubscriptionExposedPostRequestBodyItemsDiscounts? discounts;

  ///  The id property
  String? id;

  ///  The metadata property
  String? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  SubscriptionExposedPostRequestBodyItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  SubscriptionExposedPostRequestBodyItemsTaxRates? taxRates;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyItems] and sets the default values.
  SubscriptionExposedPostRequestBodyItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<
                SubscriptionExposedPostRequestBodyItemsBillingThresholds>(
            SubscriptionExposedPostRequestBodyItemsBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['clear_usage'] = (node) => clearUsage = node.getBoolValue();
    deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<SubscriptionExposedPostRequestBodyItemsDiscounts>(
            SubscriptionExposedPostRequestBodyItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<SubscriptionExposedPostRequestBodyItemsPriceData>(
            SubscriptionExposedPostRequestBodyItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getObjectValue<SubscriptionExposedPostRequestBodyItemsTaxRates>(
            SubscriptionExposedPostRequestBodyItemsTaxRates
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyItemsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeBoolValue('clear_usage', value: clearUsage);
    writer.writeBoolValue('deleted', value: deleted);
    writer.writeObjectValue<SubscriptionExposedPostRequestBodyItemsDiscounts>(
        'discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<SubscriptionExposedPostRequestBodyItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<SubscriptionExposedPostRequestBodyItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
