// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_quote_post_request_body_line_items_discounts.dart';
import './with_quote_post_request_body_line_items_price_data.dart';
import './with_quote_post_request_body_line_items_tax_rates.dart';

/// auto generated
class WithQuotePostRequestBodyLineItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  WithQuotePostRequestBodyLineItemsDiscounts? discounts;

  ///  The id property
  String? id;

  ///  The price property
  String? price;

  ///  The price_data property
  WithQuotePostRequestBodyLineItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  WithQuotePostRequestBodyLineItemsTaxRates? taxRates;

  /// Instantiates a new [WithQuotePostRequestBodyLineItems] and sets the default values.
  WithQuotePostRequestBodyLineItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithQuotePostRequestBodyLineItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithQuotePostRequestBodyLineItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts =
        node.getObjectValue<WithQuotePostRequestBodyLineItemsDiscounts>(
            WithQuotePostRequestBodyLineItemsDiscounts
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<WithQuotePostRequestBodyLineItemsPriceData>(
            WithQuotePostRequestBodyLineItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            WithQuotePostRequestBodyLineItemsTaxRates>(
        WithQuotePostRequestBodyLineItemsTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithQuotePostRequestBodyLineItemsDiscounts>(
        'discounts', discounts);
    writer.writeStringValue('id', id);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<WithQuotePostRequestBodyLineItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<WithQuotePostRequestBodyLineItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
