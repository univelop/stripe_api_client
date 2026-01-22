// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_flows_subscription_update_confirm_discount.dart';
import './portal_flows_subscription_update_confirm_item.dart';

/// auto generated
class PortalFlowsFlowSubscriptionUpdateConfirm
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The coupon or promotion code to apply to this subscription update.
  Iterable<PortalFlowsSubscriptionUpdateConfirmDiscount>? discounts;

  ///  The [subscription item](https://docs.stripe.com/api/subscription_items) to be updated through this flow. Currently, only up to one may be specified and subscriptions with multiple items are not updatable.
  Iterable<PortalFlowsSubscriptionUpdateConfirmItem>? items;

  ///  The ID of the subscription to be updated.
  String? subscription;

  /// Instantiates a new [PortalFlowsFlowSubscriptionUpdateConfirm] and sets the default values.
  PortalFlowsFlowSubscriptionUpdateConfirm() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFlowsFlowSubscriptionUpdateConfirm createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalFlowsFlowSubscriptionUpdateConfirm();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['discounts'] = (node) => discounts =
        node.getCollectionOfObjectValues<
                PortalFlowsSubscriptionUpdateConfirmDiscount>(
            PortalFlowsSubscriptionUpdateConfirmDiscount
                .createFromDiscriminatorValue);
    deserializerMap['items'] = (node) => items = node
        .getCollectionOfObjectValues<PortalFlowsSubscriptionUpdateConfirmItem>(
            PortalFlowsSubscriptionUpdateConfirmItem
                .createFromDiscriminatorValue);
    deserializerMap['subscription'] =
        (node) => subscription = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
        PortalFlowsSubscriptionUpdateConfirmDiscount>('discounts', discounts);
    writer.writeCollectionOfObjectValues<
        PortalFlowsSubscriptionUpdateConfirmItem>('items', items);
    writer.writeStringValue('subscription', subscription);
    writer.writeAdditionalData(additionalData);
  }
}
