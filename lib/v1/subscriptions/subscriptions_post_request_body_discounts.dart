// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_discounts_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<SubscriptionsPostRequestBodyDiscountsMember1>], [String?]
class SubscriptionsPostRequestBodyDiscounts implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<SubscriptionsPostRequestBodyDiscountsMember1>]
  Iterable<SubscriptionsPostRequestBodyDiscountsMember1>?
      subscriptionsPostRequestBodyDiscountsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyDiscounts createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = SubscriptionsPostRequestBodyDiscounts();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                SubscriptionsPostRequestBodyDiscountsMember1>(
            SubscriptionsPostRequestBodyDiscountsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.subscriptionsPostRequestBodyDiscountsMember1 =
          parseNode.getCollectionOfObjectValues<
                  SubscriptionsPostRequestBodyDiscountsMember1>(
              SubscriptionsPostRequestBodyDiscountsMember1
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
    } else if (subscriptionsPostRequestBodyDiscountsMember1 != null) {
      writer.writeCollectionOfObjectValues<
              SubscriptionsPostRequestBodyDiscountsMember1>(
          null, subscriptionsPostRequestBodyDiscountsMember1);
    }
  }
}
