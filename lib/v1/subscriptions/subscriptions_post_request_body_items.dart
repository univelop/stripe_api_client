// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_items_billing_thresholds.dart';
import './subscriptions_post_request_body_items_discounts.dart';
import './subscriptions_post_request_body_items_metadata.dart';
import './subscriptions_post_request_body_items_price_data.dart';
import './subscriptions_post_request_body_items_tax_rates.dart';

/// auto generated
class SubscriptionsPostRequestBodyItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_thresholds property
  SubscriptionsPostRequestBodyItemsBillingThresholds? billingThresholds;

  ///  The discounts property
  SubscriptionsPostRequestBodyItemsDiscounts? discounts;

  ///  The metadata property
  SubscriptionsPostRequestBodyItemsMetadata? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  SubscriptionsPostRequestBodyItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  SubscriptionsPostRequestBodyItemsTaxRates? taxRates;

  /// Instantiates a new [SubscriptionsPostRequestBodyItems] and sets the default values.
  SubscriptionsPostRequestBodyItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsPostRequestBodyItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<SubscriptionsPostRequestBodyItemsBillingThresholds>(
            SubscriptionsPostRequestBodyItemsBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<SubscriptionsPostRequestBodyItemsDiscounts>(
            SubscriptionsPostRequestBodyItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SubscriptionsPostRequestBodyItemsMetadata>(
        SubscriptionsPostRequestBodyItemsMetadata.createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<SubscriptionsPostRequestBodyItemsPriceData>(
            SubscriptionsPostRequestBodyItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            SubscriptionsPostRequestBodyItemsTaxRates>(
        SubscriptionsPostRequestBodyItemsTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionsPostRequestBodyItemsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeObjectValue<SubscriptionsPostRequestBodyItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<SubscriptionsPostRequestBodyItemsMetadata>(
        'metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<SubscriptionsPostRequestBodyItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<SubscriptionsPostRequestBodyItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
