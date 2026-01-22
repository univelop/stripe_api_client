// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_line_items_adjustable_quantity.dart';
import './sessions_post_request_body_line_items_metadata.dart';
import './sessions_post_request_body_line_items_price_data.dart';

/// auto generated
class SessionsPostRequestBodyLineItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The adjustable_quantity property
  SessionsPostRequestBodyLineItemsAdjustableQuantity? adjustableQuantity;

  ///  The dynamic_tax_rates property
  Iterable<String>? dynamicTaxRates;

  ///  The metadata property
  SessionsPostRequestBodyLineItemsMetadata? metadata;

  ///  The price property
  String? price;

  ///  The price_data property
  SessionsPostRequestBodyLineItemsPriceData? priceData;

  ///  The quantity property
  int? quantity;

  ///  The tax_rates property
  Iterable<String>? taxRates;

  /// Instantiates a new [SessionsPostRequestBodyLineItems] and sets the default values.
  SessionsPostRequestBodyLineItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyLineItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SessionsPostRequestBodyLineItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adjustable_quantity'] = (node) => adjustableQuantity =
        node.getObjectValue<SessionsPostRequestBodyLineItemsAdjustableQuantity>(
            SessionsPostRequestBodyLineItemsAdjustableQuantity
                .createFromDiscriminatorValue);
    deserializerMap['dynamic_tax_rates'] = (node) =>
        dynamicTaxRates = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            SessionsPostRequestBodyLineItemsMetadata>(
        SessionsPostRequestBodyLineItemsMetadata.createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['price_data'] = (node) => priceData = node.getObjectValue<
            SessionsPostRequestBodyLineItemsPriceData>(
        SessionsPostRequestBodyLineItemsPriceData.createFromDiscriminatorValue);
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    deserializerMap['tax_rates'] =
        (node) => taxRates = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SessionsPostRequestBodyLineItemsAdjustableQuantity>(
        'adjustable_quantity', adjustableQuantity);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'dynamic_tax_rates', dynamicTaxRates);
    writer.writeObjectValue<SessionsPostRequestBodyLineItemsMetadata>(
        'metadata', metadata);
    writer.writeStringValue('price', price);
    writer.writeObjectValue<SessionsPostRequestBodyLineItemsPriceData>(
        'price_data', priceData);
    writer.writeIntValue('quantity', quantity);
    writer.writeCollectionOfPrimitiveValues<String?>('tax_rates', taxRates);
    writer.writeAdditionalData(additionalData);
  }
}
