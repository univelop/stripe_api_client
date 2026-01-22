// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_subscription_details_items_billing_thresholds.dart';
import './create_preview_post_request_body_subscription_details_items_discounts.dart';
import './create_preview_post_request_body_subscription_details_items_price_data.dart';
import './create_preview_post_request_body_subscription_details_items_tax_rates.dart';

/// auto generated
class CreatePreviewPostRequestBodySubscriptionDetailsItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_thresholds property
  CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholds?
      billingThresholds;

  ///  The clear_usage property
  bool? clearUsage;

  ///  The deleted property
  bool? deleted;

  ///  The discounts property
  CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscounts? discounts;

  ///  The id property
  String? id;

  ///  The metadata property
  String? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  CreatePreviewPostRequestBodySubscriptionDetailsItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  CreatePreviewPostRequestBodySubscriptionDetailsItemsTaxRates? taxRates;

  /// Instantiates a new [CreatePreviewPostRequestBodySubscriptionDetailsItems] and sets the default values.
  CreatePreviewPostRequestBodySubscriptionDetailsItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodySubscriptionDetailsItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodySubscriptionDetailsItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'billing_thresholds'] = (node) => billingThresholds = node.getObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholds>(
        CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholds
            .createFromDiscriminatorValue);
    deserializerMap['clear_usage'] = (node) => clearUsage = node.getBoolValue();
    deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscounts>(
        CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscounts
            .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsPriceData>(
        CreatePreviewPostRequestBodySubscriptionDetailsItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsTaxRates>(
        CreatePreviewPostRequestBodySubscriptionDetailsItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeBoolValue('clear_usage', value: clearUsage);
    writer.writeBoolValue('deleted', value: deleted);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsDiscounts>(
        'discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodySubscriptionDetailsItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
