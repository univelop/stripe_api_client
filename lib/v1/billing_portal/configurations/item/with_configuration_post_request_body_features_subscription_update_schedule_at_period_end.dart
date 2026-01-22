// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_configuration_post_request_body_features_subscription_update_schedule_at_period_end_conditions.dart';

/// auto generated
class WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The conditions property
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions?
      conditions;

  /// Instantiates a new [WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd] and sets the default values.
  WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['conditions'] = (node) => conditions = node.getObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions>(
        WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithConfigurationPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions>(
        'conditions', conditions);
    writer.writeAdditionalData(additionalData);
  }
}
