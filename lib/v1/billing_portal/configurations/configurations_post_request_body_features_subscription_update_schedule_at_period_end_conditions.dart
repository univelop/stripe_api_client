// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './configurations_post_request_body_features_subscription_update_schedule_at_period_end_conditions_type.dart';

/// auto generated
class ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The type property
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType?
      type_;

  /// Instantiates a new [ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions] and sets the default values.
  ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['type'] = (node) => type_ = node.getEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType>(
        (stringValue) =>
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            ConfigurationsPostRequestBodyFeaturesSubscriptionUpdateScheduleAtPeriodEndConditionsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
