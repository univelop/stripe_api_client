// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_links_post_request_body_optional_items_adjustable_quantity.dart';

/// auto generated
class PaymentLinksPostRequestBodyOptionalItems
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The adjustable_quantity property
  PaymentLinksPostRequestBodyOptionalItemsAdjustableQuantity?
      adjustableQuantity;

  ///  The price property
  String? price;

  ///  The quantity property
  int? quantity;

  /// Instantiates a new [PaymentLinksPostRequestBodyOptionalItems] and sets the default values.
  PaymentLinksPostRequestBodyOptionalItems() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentLinksPostRequestBodyOptionalItems createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentLinksPostRequestBodyOptionalItems();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adjustable_quantity'] = (node) => adjustableQuantity =
        node.getObjectValue<
                PaymentLinksPostRequestBodyOptionalItemsAdjustableQuantity>(
            PaymentLinksPostRequestBodyOptionalItemsAdjustableQuantity
                .createFromDiscriminatorValue);
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentLinksPostRequestBodyOptionalItemsAdjustableQuantity>(
        'adjustable_quantity', adjustableQuantity);
    writer.writeStringValue('price', price);
    writer.writeIntValue('quantity', quantity);
    writer.writeAdditionalData(additionalData);
  }
}
