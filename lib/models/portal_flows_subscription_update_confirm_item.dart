// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PortalFlowsSubscriptionUpdateConfirmItem
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The ID of the [subscription item](https://docs.stripe.com/api/subscriptions/object#subscription_object-items-data-id) to be updated.
  String? id;

  ///  The price the customer should subscribe to through this flow. The price must also be included in the configuration's [`features.subscription_update.products`](https://docs.stripe.com/api/customer_portal/configuration#portal_configuration_object-features-subscription_update-products).
  String? price;

  ///  [Quantity](https://docs.stripe.com/subscriptions/quantities) for this item that the customer should subscribe to through this flow.
  int? quantity;

  /// Instantiates a new [PortalFlowsSubscriptionUpdateConfirmItem] and sets the default values.
  PortalFlowsSubscriptionUpdateConfirmItem() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFlowsSubscriptionUpdateConfirmItem createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalFlowsSubscriptionUpdateConfirmItem();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['price'] = (node) => price = node.getStringValue();
    deserializerMap['quantity'] = (node) => quantity = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeStringValue('price', price);
    writer.writeIntValue('quantity', quantity);
    writer.writeAdditionalData(additionalData);
  }
}
