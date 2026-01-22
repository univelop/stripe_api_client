// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_items_billing_thresholds_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionsPostRequestBodyItemsBillingThresholdsMember1]
class SubscriptionsPostRequestBodyItemsBillingThresholds implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionsPostRequestBodyItemsBillingThresholdsMember1]
  SubscriptionsPostRequestBodyItemsBillingThresholdsMember1?
      subscriptionsPostRequestBodyItemsBillingThresholdsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyItemsBillingThresholds
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = SubscriptionsPostRequestBodyItemsBillingThresholds();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionsPostRequestBodyItemsBillingThresholdsMember1 =
          SubscriptionsPostRequestBodyItemsBillingThresholdsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionsPostRequestBodyItemsBillingThresholdsMember1 != null) {
      subscriptionsPostRequestBodyItemsBillingThresholdsMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              SubscriptionsPostRequestBodyItemsBillingThresholdsMember1>(
          null, subscriptionsPostRequestBodyItemsBillingThresholdsMember1);
    }
  }
}
