// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_phases_items_billing_thresholds_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1]
class SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholds
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1]
  SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1?
      subscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholds
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholds();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1 =
          SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1 !=
        null) {
      subscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1!
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
              SubscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1>(
          null,
          subscriptionSchedulesPostRequestBodyPhasesItemsBillingThresholdsMember1);
    }
  }
}
