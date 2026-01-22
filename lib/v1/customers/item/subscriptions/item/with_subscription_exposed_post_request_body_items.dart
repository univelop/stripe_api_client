// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_items_billing_thresholds.dart';
import './with_subscription_exposed_post_request_body_items_discounts.dart';
import './with_subscription_exposed_post_request_body_items_price_data.dart';
import './with_subscription_exposed_post_request_body_items_tax_rates.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_thresholds property
  WithSubscriptionExposedPostRequestBodyItemsBillingThresholds?
      billingThresholds;

  ///  The clear_usage property
  bool? clearUsage;

  ///  The deleted property
  bool? deleted;

  ///  The discounts property
  WithSubscriptionExposedPostRequestBodyItemsDiscounts? discounts;

  ///  The id property
  String? id;

  ///  The metadata property
  String? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  WithSubscriptionExposedPostRequestBodyItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  WithSubscriptionExposedPostRequestBodyItemsTaxRates? taxRates;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyItems] and sets the default values.
  WithSubscriptionExposedPostRequestBodyItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<
                WithSubscriptionExposedPostRequestBodyItemsBillingThresholds>(
            WithSubscriptionExposedPostRequestBodyItemsBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['clear_usage'] = (node) => clearUsage = node.getBoolValue();
    deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
    deserializerMap['discounts'] = (node) => discounts = node
        .getObjectValue<WithSubscriptionExposedPostRequestBodyItemsDiscounts>(
            WithSubscriptionExposedPostRequestBodyItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node
        .getObjectValue<WithSubscriptionExposedPostRequestBodyItemsPriceData>(
            WithSubscriptionExposedPostRequestBodyItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node
        .getObjectValue<WithSubscriptionExposedPostRequestBodyItemsTaxRates>(
            WithSubscriptionExposedPostRequestBodyItemsTaxRates
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyItemsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeBoolValue('clear_usage', value: clearUsage);
    writer.writeBoolValue('deleted', value: deleted);
    writer
        .writeObjectValue<WithSubscriptionExposedPostRequestBodyItemsDiscounts>(
            'discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('price', price);
    writer
        .writeObjectValue<WithSubscriptionExposedPostRequestBodyItemsPriceData>(
            'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer
        .writeObjectValue<WithSubscriptionExposedPostRequestBodyItemsTaxRates>(
            'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
