// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_schedules_post_request_body_default_settings_billing_thresholds_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1]
class SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholds
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1]
  SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1?
      subscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholds
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholds();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.subscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1 =
          SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (subscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1 !=
        null) {
      subscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1!
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
              SubscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1>(
          null,
          subscriptionSchedulesPostRequestBodyDefaultSettingsBillingThresholdsMember1);
    }
  }
}
