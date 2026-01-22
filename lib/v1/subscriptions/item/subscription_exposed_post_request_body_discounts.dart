// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SubscriptionExposedPostRequestBodyDiscountsMember1>], [String?]
class SubscriptionExposedPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<SubscriptionExposedPostRequestBodyDiscountsMember1>]
  Iterable<SubscriptionExposedPostRequestBodyDiscountsMember1>?
      subscriptionExposedPostRequestBodyDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyDiscounts
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SubscriptionExposedPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SubscriptionExposedPostRequestBodyDiscountsMember1>(
            SubscriptionExposedPostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.subscriptionExposedPostRequestBodyDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SubscriptionExposedPostRequestBodyDiscountsMember1>(
              SubscriptionExposedPostRequestBodyDiscountsMember1
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
    } else if (subscriptionExposedPostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              SubscriptionExposedPostRequestBodyDiscountsMember1>(
          null, subscriptionExposedPostRequestBodyDiscountsMember1);
    }
  }
}
