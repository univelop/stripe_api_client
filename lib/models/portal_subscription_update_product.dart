// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_subscription_update_product_adjustable_quantity.dart';

/// auto generated
class PortalSubscriptionUpdateProduct
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The adjustable_quantity property
  PortalSubscriptionUpdateProductAdjustableQuantity? adjustableQuantity;

  ///  The list of price IDs which, when subscribed to, a subscription can be updated.
  Iterable<String>? prices;

  ///  The product ID.
  String? product;

  /// Instantiates a new [PortalSubscriptionUpdateProduct] and sets the default values.
  PortalSubscriptionUpdateProduct() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalSubscriptionUpdateProduct createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalSubscriptionUpdateProduct();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['adjustable_quantity'] = (node) => adjustableQuantity =
        node.getObjectValue<PortalSubscriptionUpdateProductAdjustableQuantity>(
            PortalSubscriptionUpdateProductAdjustableQuantity
                .createFromDiscriminatorValue);
    deserializerMap['prices'] =
        (node) => prices = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['product'] = (node) => product = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PortalSubscriptionUpdateProductAdjustableQuantity>(
        'adjustable_quantity', adjustableQuantity);
    writer.writeCollectionOfPrimitiveValues<String?>('prices', prices);
    writer.writeStringValue('product', product);
    writer.writeAdditionalData(additionalData);
  }
}
