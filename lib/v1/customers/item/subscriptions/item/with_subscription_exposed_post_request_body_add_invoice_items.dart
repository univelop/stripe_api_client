// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_discounts.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_metadata.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_period.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_price_data.dart';
import './with_subscription_exposed_post_request_body_add_invoice_items_tax_rates.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyAddInvoiceItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  Iterable<WithSubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts>?
      discounts;

  ///  The metadata property
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata? metadata;

  ///  The period property
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod? period;

  ///  The price property
  String? price;

  ///  The price_data property
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  WithSubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates? taxRates;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyAddInvoiceItems] and sets the default values.
  WithSubscriptionExposedPostRequestBodyAddInvoiceItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyAddInvoiceItems
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyAddInvoiceItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<
                WithSubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts>(
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata>(
        WithSubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata
            .createFromDiscriminatorValue);
    deserializerMap['period'] = (node) => period = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod>(
        WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod
            .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData>(
        WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData
            .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates>(
        WithSubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsDiscounts>(
        'discounts', discounts);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPeriod>(
        'period', period);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyAddInvoiceItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
