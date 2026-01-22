// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_add_invoice_items_discounts.dart';
import './subscription_exposed_post_request_body_add_invoice_items_metadata.dart';
import './subscription_exposed_post_request_body_add_invoice_items_period.dart';
import './subscription_exposed_post_request_body_add_invoice_items_price_data.dart';
import './subscription_exposed_post_request_body_add_invoice_items_tax_rates.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyAddInvoiceItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  Iterable<SubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts>?
      discounts;

  ///  The metadata property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata? metadata;

  ///  The period property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod? period;

  ///  The price property
  String? price;

  ///  The price_data property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  SubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates? taxRates;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyAddInvoiceItems] and sets the default values.
  SubscriptionExposedPostRequestBodyAddInvoiceItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyAddInvoiceItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyAddInvoiceItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<
                SubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts>(
            SubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata>(
        SubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata
            .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period = node.getObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod>(
        SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod
            .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData>(
        SubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates>(
        SubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod>(
        'period', period);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
