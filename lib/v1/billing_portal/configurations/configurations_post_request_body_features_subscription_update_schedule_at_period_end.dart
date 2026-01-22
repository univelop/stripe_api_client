// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_subscription_update_schedule_at_period_end_conditions.dart';

/// auto generated
class ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The conditions property
  Iterable<
          ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions>?
      conditions;

  /// Instantiates a new [ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd] and sets the default values.
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEnd();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'conditions'] = (node) => conditions = node.getCollectionOfObjectValues<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions>(
        ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions>(
        'conditions', conditions);
    writer.writeAdditionalData(additionalData);
  }
}
