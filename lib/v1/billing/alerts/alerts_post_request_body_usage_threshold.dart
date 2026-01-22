// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './alerts_post_request_body_usage_threshold_filters.dart';
import './alerts_post_request_body_usage_threshold_recurrence.dart';

/// auto generated
/// The configuration of the usage threshold.
class AlertsPostRequestBodyUsageThreshold
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The filters property
  Iterable<AlertsPostRequestBodyUsageThresholdFilters>? filters;

  ///  The gte property
  int? gte;

  ///  The meter property
  String? meter;

  ///  The recurrence property
  AlertsPostRequestBodyUsageThresholdRecurrence? recurrence;

  /// Instantiates a new [AlertsPostRequestBodyUsageThreshold] and sets the default values.
  AlertsPostRequestBodyUsageThreshold() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AlertsPostRequestBodyUsageThreshold createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AlertsPostRequestBodyUsageThreshold();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['filters'] = (node) => filters =
        node.getCollectionOfObjectValues<
                AlertsPostRequestBodyUsageThresholdFilters>(
            AlertsPostRequestBodyUsageThresholdFilters
                .createFromDiscriminatorValue);
    deserializerMap['gte'] = (node) => gte = node.getIntValue();
    deserializerMap['meter'] = (node) => meter = node.getStringValue();
    deserializerMap['recurrence'] = (node) => recurrence =
        node.getEnumValue<AlertsPostRequestBodyUsageThresholdRecurrence>(
            (stringValue) => AlertsPostRequestBodyUsageThresholdRecurrence
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<
        AlertsPostRequestBodyUsageThresholdFilters>('filters', filters);
    writer.writeIntValue('gte', gte);
    writer.writeStringValue('meter', meter);
    writer.writeEnumValue<AlertsPostRequestBodyUsageThresholdRecurrence>(
        'recurrence', recurrence, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
