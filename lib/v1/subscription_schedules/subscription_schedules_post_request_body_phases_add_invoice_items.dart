// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_add_invoice_items_discounts.dart';
import './subscription_schedules_post_request_body_phases_add_invoice_items_metadata.dart';
import './subscription_schedules_post_request_body_phases_add_invoice_items_period.dart';
import './subscription_schedules_post_request_body_phases_add_invoice_items_price_data.dart';
import './subscription_schedules_post_request_body_phases_add_invoice_items_tax_rates.dart';

/// auto generated
class SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  Iterable<SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsDiscounts>?
      discounts;

  ///  The metadata property
  SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsMetadata? metadata;

  ///  The period property
  SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriod? period;

  ///  The price property
  String? price;

  ///  The price_data property
  SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsTaxRates? taxRates;

  /// Instantiates a new [SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems] and sets the default values.
  SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'discounts'] = (node) => discounts = node.getCollectionOfObjectValues<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsDiscounts>(
        SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsDiscounts
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsMetadata>(
        SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsMetadata
            .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriod>(
        SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriod
            .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPriceData>(
        SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsTaxRates>(
        SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPeriod>(
        'period', period);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            SubscriptionSchedulesPostRequestBodyPhasesAddInvoiceItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
