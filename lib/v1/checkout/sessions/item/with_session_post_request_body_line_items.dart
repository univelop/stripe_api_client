// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_session_post_request_body_line_items_adjustable_quantity.dart';
import './with_session_post_request_body_line_items_price_data.dart';
import './with_session_post_request_body_line_items_tax_rates.dart';

/// auto generated
class WithSessionPostRequestBodyLineItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The adjustable_quantity property
  WithSessionPostRequestBodyLineItemsAdjustableQuantity? adjustableQuantity;

  ///  The id property
  String? id;

  ///  The metadata property
  String? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  WithSessionPostRequestBodyLineItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  WithSessionPostRequestBodyLineItemsTaxRates? taxRates;

  /// Instantiates a new [WithSessionPostRequestBodyLineItems] and sets the default values.
  WithSessionPostRequestBodyLineItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSessionPostRequestBodyLineItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithSessionPostRequestBodyLineItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adjustable_quantity'] = (node) => adjustableQuantity = node
        .getObjectValue<WithSessionPostRequestBodyLineItemsAdjustableQuantity>(
            WithSessionPostRequestBodyLineItemsAdjustableQuantity
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData =
        node.getObjectValue<WithSessionPostRequestBodyLineItemsPriceData>(
            WithSessionPostRequestBodyLineItemsPriceData
                .createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] = (node) => taxRates =
        node.getObjectValue<WithSessionPostRequestBodyLineItemsTaxRates>(
            WithSessionPostRequestBodyLineItemsTaxRates
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSessionPostRequestBodyLineItemsAdjustableQuantity>(
        'adjustable_quantity', adjustableQuantity);
    writer.writeStringValue('id', id);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<WithSessionPostRequestBodyLineItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeObjectValue<WithSessionPostRequestBodyLineItemsTaxRates>(
        'tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
