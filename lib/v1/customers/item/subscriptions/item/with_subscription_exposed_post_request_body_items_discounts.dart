// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_items_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1>], [String?]
class WithSubscriptionExposedPostRequestBodyItemsDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1>]
  Iterable<WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1>?
      withSubscriptionExposedPostRequestBodyItemsDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyItemsDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithSubscriptionExposedPostRequestBodyItemsDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1>(
            WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withSubscriptionExposedPostRequestBodyItemsDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1>(
              WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1
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
    } else if (withSubscriptionExposedPostRequestBodyItemsDiscountsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithSubscriptionExposedPostRequestBodyItemsDiscountsMember1>(
          null, withSubscriptionExposedPostRequestBodyItemsDiscountsMember1);
    }
  }
}
