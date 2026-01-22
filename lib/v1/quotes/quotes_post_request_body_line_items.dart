// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_post_request_body_line_items_discounts.dart';
import './quotes_post_request_body_line_items_price_data.dart';
import './quotes_post_request_body_line_items_tax_rates.dart';

/// auto generated
class QuotesPostRequestBodyLineItems implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The discounts property
  QuotesPostRequestBodyLineItemsDiscounts? discounts;

  ///  The price property
  String? price;

  ///  The price_data property
  QuotesPostRequestBodyLineItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  QuotesPostRequestBodyLineItemsTaxRates? taxRates;

  /// Instantiates a new [QuotesPostRequestBodyLineItems] and sets the default values.
  QuotesPostRequestBodyLineItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesPostRequestBodyLineItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesPostRequestBodyLineItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts = node.getObjectValue<
            QuotesPostRequestBodyLineItemsDiscounts>(
        QuotesPostRequestBodyLineItemsDiscounts.createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            QuotesPostRequestBodyLineItemsPriceData>(
        QuotesPostRequestBodyLineItemsPriceData.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates = node.getObjectValue<
            QuotesPostRequestBodyLineItemsTaxRates>(
        QuotesPostRequestBodyLineItemsTaxRates.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<QuotesPostRequestBodyLineItemsDiscounts>(
        'discounts', discounts);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<QuotesPostRequestBodyLineItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<QuotesPostRequestBodyLineItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
