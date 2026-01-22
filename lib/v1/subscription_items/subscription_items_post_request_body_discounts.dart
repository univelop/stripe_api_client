// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_items_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SubscriptionItemsPostRequestBodyDiscountsMember1>], [String?]
class SubscriptionItemsPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<SubscriptionItemsPostRequestBodyDiscountsMember1>]
  Iterable<SubscriptionItemsPostRequestBodyDiscountsMember1>?
      subscriptionItemsPostRequestBodyDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionItemsPostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = SubscriptionItemsPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SubscriptionItemsPostRequestBodyDiscountsMember1>(
            SubscriptionItemsPostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.subscriptionItemsPostRequestBodyDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SubscriptionItemsPostRequestBodyDiscountsMember1>(
              SubscriptionItemsPostRequestBodyDiscountsMember1
                  .createFromDiscriminatorValue);
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else if (subscriptionItemsPostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              SubscriptionItemsPostRequestBodyDiscountsMember1>(
          null, subscriptionItemsPostRequestBodyDiscountsMember1);
    }
  }
}
