// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_add_invoice_items_discounts.dart';
import './subscriptions_post_request_body_add_invoice_items_metadata.dart';
import './subscriptions_post_request_body_add_invoice_items_period.dart';
import './subscriptions_post_request_body_add_invoice_items_price_data.dart';
import './subscriptions_post_request_body_add_invoice_items_tax_rates.dart';

/// auto generated
class SubscriptionsPostRequestBodyAddInvoiceItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  Iterable<SubscriptionsPostRequestBodyAddInvoiceItemsDiscounts>? discounts;

  ///  The metadata property
  SubscriptionsPostRequestBodyAddInvoiceItemsMetadata? metadata;

  ///  The period property
  SubscriptionsPostRequestBodyAddInvoiceItemsPeriod? period;

  ///  The price property
  String? price;

  ///  The price_data property
  SubscriptionsPostRequestBodyAddInvoiceItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  SubscriptionsPostRequestBodyAddInvoiceItemsTaxRates? taxRates;

  /// Instantiates a new [SubscriptionsPostRequestBodyAddInvoiceItems] and sets the default values.
  SubscriptionsPostRequestBodyAddInvoiceItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyAddInvoiceItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyAddInvoiceItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<
                SubscriptionsPostRequestBodyAddInvoiceItemsDiscounts>(
            SubscriptionsPostRequestBodyAddInvoiceItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node
        .getObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsMetadata>(
            SubscriptionsPostRequestBodyAddInvoiceItemsMetadata
                .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period =
        node.getObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsPeriod>(
            SubscriptionsPostRequestBodyAddInvoiceItemsPeriod
                .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node
        .getObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsPriceData>(
            SubscriptionsPostRequestBodyAddInvoiceItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node
        .getObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsTaxRates>(
            SubscriptionsPostRequestBodyAddInvoiceItemsTaxRates
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            SubscriptionsPostRequestBodyAddInvoiceItemsDiscounts>(
        'discounts', discounts);
    writer
        .writeObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsMetadata>(
            'metadata', metadata);
    writer.writeObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsPeriod>(
        'period', period);
    writer.writeStringValue('price', price);
    writer
        .writeObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsPriceData>(
            'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer
        .writeObjectValue<SubscriptionsPostRequestBodyAddInvoiceItemsTaxRates>(
            'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
