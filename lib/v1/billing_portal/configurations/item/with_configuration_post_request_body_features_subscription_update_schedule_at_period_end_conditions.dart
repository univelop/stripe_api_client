// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_update_schedule_at_period_end_conditions_member1.dart';

/// auto generated
/// Composed type wrapper for classes [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1>], [String?]
class WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [Iterable<WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1>]
  Iterable<
          WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1>?
      withConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result =
        WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else if (parseNode
        .getCollectionOfObjectValues<
                WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1>(
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1
                .createFromDiscriminatorValue)
        .isNotEmpty) {
      result.withConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1 =
          parseNode.getCollectionOfObjectValues<
                  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1>(
              WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1
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
    } else if (withConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1 !=
        null) {
      writer.writeCollectionOfObjectValues<
              WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1>(
          null,
          withConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsMember1);
    }
  }
}
