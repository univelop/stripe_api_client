// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_schedule_post_request_body_phases_items_billing_thresholds.dart';
import './with_schedule_post_request_body_phases_items_discounts.dart';
import './with_schedule_post_request_body_phases_items_metadata.dart';
import './with_schedule_post_request_body_phases_items_price_data.dart';
import './with_schedule_post_request_body_phases_items_tax_rates.dart';

/// auto generated
class WithSchedulePostRequestBodyPhasesItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_thresholds property
  WithSchedulePostRequestBodyPhasesItemsBillingThresholds? billingThresholds;

  ///  The discounts property
  WithSchedulePostRequestBodyPhasesItemsDiscounts? discounts;

  ///  The metadata property
  WithSchedulePostRequestBodyPhasesItemsMetadata? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  WithSchedulePostRequestBodyPhasesItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  WithSchedulePostRequestBodyPhasesItemsTaxRates? taxRates;

  /// Instantiates a new [WithSchedulePostRequestBodyPhasesItems] and sets the default values.
  WithSchedulePostRequestBodyPhasesItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSchedulePostRequestBodyPhasesItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSchedulePostRequestBodyPhasesItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['billing_thresholds'] = (node) => billingThresholds =
        node.getObjectValue<
                WithSchedulePostRequestBodyPhasesItemsBillingThresholds>(
            WithSchedulePostRequestBodyPhasesItemsBillingThresholds
                .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesItemsDiscounts>(
            WithSchedulePostRequestBodyPhasesItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesItemsMetadata>(
            WithSchedulePostRequestBodyPhasesItemsMetadata
                .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesItemsPriceData>(
            WithSchedulePostRequestBodyPhasesItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getObjectValue<WithSchedulePostRequestBodyPhasesItemsTaxRates>(
            WithSchedulePostRequestBodyPhasesItemsTaxRates
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSchedulePostRequestBodyPhasesItemsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesItemsMetadata>(
        'metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<WithSchedulePostRequestBodyPhasesItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
