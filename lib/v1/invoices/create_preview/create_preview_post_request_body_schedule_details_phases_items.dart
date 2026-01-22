// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create_preview_post_request_body_schedule_details_phases_items_billing_thresholds.dart';
import './create_preview_post_request_body_schedule_details_phases_items_discounts.dart';
import './create_preview_post_request_body_schedule_details_phases_items_metadata.dart';
import './create_preview_post_request_body_schedule_details_phases_items_price_data.dart';
import './create_preview_post_request_body_schedule_details_phases_items_tax_rates.dart';

/// auto generated
class CreatePreviewPostRequestBodyScheduleDetailsPhasesItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The billing_thresholds property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsBillingThresholds?
      billingThresholds;

  ///  The discounts property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsDiscounts? discounts;

  ///  The metadata property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsMetadata? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsTaxRates? taxRates;

  /// Instantiates a new [CreatePreviewPostRequestBodyScheduleDetailsPhasesItems] and sets the default values.
  CreatePreviewPostRequestBodyScheduleDetailsPhasesItems()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreatePreviewPostRequestBodyScheduleDetailsPhasesItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreatePreviewPostRequestBodyScheduleDetailsPhasesItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'billing_thresholds'] = (node) => billingThresholds = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsBillingThresholds>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsBillingThresholds
            .createFromDiscriminatorValue);
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsDiscounts>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsDiscounts
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsMetadata>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsMetadata
            .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsTaxRates>(
        CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsBillingThresholds>(
        'billing_thresholds', billingThresholds);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsMetadata>(
        'metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            CreatePreviewPostRequestBodyScheduleDetailsPhasesItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
