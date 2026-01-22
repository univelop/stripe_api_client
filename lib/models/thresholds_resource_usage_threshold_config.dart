// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './thresholds_resource_usage_alert_filter.dart';
import './thresholds_resource_usage_threshold_config_meter.dart';
import './thresholds_resource_usage_threshold_config_recurrence.dart';

/// auto generated
/// The usage threshold alert configuration enables setting up alerts for when a certain usage threshold on a specific meter is crossed.
class ThresholdsResourceUsageThresholdConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters allow limiting the scope of this usage alert. You can only specify up to one filter at this time.
  Iterable<ThresholdsResourceUsageAlertFilter>? filters;

  ///  The value at which this alert will trigger.
  int? gte;

  ///  The [Billing Meter](/api/billing/meter) ID whose usage is monitored.
  ThresholdsResourceUsageThresholdConfigMeter? meter;

  ///  Defines how the alert will behave.
  ThresholdsResourceUsageThresholdConfigRecurrence? recurrence;

  /// Instantiates a new [ThresholdsResourceUsageThresholdConfig] and sets the default values.
  ThresholdsResourceUsageThresholdConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ThresholdsResourceUsageThresholdConfig createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ThresholdsResourceUsageThresholdConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters =
        node.getCollectionOfObjectValues<ThresholdsResourceUsageAlertFilter>(
            ThresholdsResourceUsageAlertFilter.createFromDiscriminatorValue);
    deserializerMap['gte'] = (node) => gte = node.getIntValue();
    deserializerMap['meter'] = (node) => meter =
        node.getObjectValue<ThresholdsResourceUsageThresholdConfigMeter>(
            ThresholdsResourceUsageThresholdConfigMeter
                .createFromDiscriminatorValue);
    deserializerMap['recurrence'] = (node) => recurrence =
        node.getEnumValue<ThresholdsResourceUsageThresholdConfigRecurrence>(
            (stringValue) => ThresholdsResourceUsageThresholdConfigRecurrence
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<ThresholdsResourceUsageAlertFilter>(
        'filters', filters);
    writer.writeIntValue('gte', gte);
    writer.writeObjectValue<ThresholdsResourceUsageThresholdConfigMeter>(
        'meter', meter);
    writer.writeEnumValue<ThresholdsResourceUsageThresholdConfigRecurrence>(
        'recurrence', recurrence, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
