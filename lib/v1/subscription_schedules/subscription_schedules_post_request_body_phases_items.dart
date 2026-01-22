// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_items_billing_thresholds.dart';
import './subscription_schedules_post_request_body_phases_items_discounts.dart';
import './subscription_schedules_post_request_body_phases_items_metadata.dart';
import './subscription_schedules_post_request_body_phases_items_price_data.dart';
import './subscription_schedules_post_request_body_phases_items_tax_rates.dart';

/// auto generated
class SubscriptionSchedulesPostRequestBodyPhasesItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_thresholds property
  SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholds?
      billingThresholds;

  ///  The discounts property
  SubscriptionSchedulesPostRequestBodyPhasesItemsDiscounts? discounts;

  ///  The metadata property
  SubscriptionSchedulesPostRequestBodyPhasesItemsMetadata? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  SubscriptionSchedulesPostRequestBodyPhasesItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  SubscriptionSchedulesPostRequestBodyPhasesItemsTaxRates? taxRates;

  /// Instantiates a new [SubscriptionSchedulesPostRequestBodyPhasesItems] and sets the default values.
  SubscriptionSchedulesPostRequestBodyPhasesItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhasesItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesPostRequestBodyPhasesItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<
                SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholds>(
            SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsDiscounts>(
        SubscriptionSchedulesPostRequestBodyPhasesItemsDiscounts
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsMetadata>(
        SubscriptionSchedulesPostRequestBodyPhasesItemsMetadata
            .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsPriceData>(
        SubscriptionSchedulesPostRequestBodyPhasesItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsTaxRates>(
        SubscriptionSchedulesPostRequestBodyPhasesItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsMetadata>(
        'metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
