// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SubscriptionsPostRequestBodyItemsDiscountsMember1>], [String?]
class SubscriptionsPostRequestBodyItemsDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<SubscriptionsPostRequestBodyItemsDiscountsMember1>]
  Iterable<SubscriptionsPostRequestBodyItemsDiscountsMember1>?
      subscriptionsPostRequestBodyItemsDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyItemsDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SubscriptionsPostRequestBodyItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SubscriptionsPostRequestBodyItemsDiscountsMember1>(
            SubscriptionsPostRequestBodyItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.subscriptionsPostRequestBodyItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SubscriptionsPostRequestBodyItemsDiscountsMember1>(
              SubscriptionsPostRequestBodyItemsDiscountsMember1
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
    } else if (subscriptionsPostRequestBodyItemsDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              SubscriptionsPostRequestBodyItemsDiscountsMember1>(
          null, subscriptionsPostRequestBodyItemsDiscountsMember1);
    }
  }
}
