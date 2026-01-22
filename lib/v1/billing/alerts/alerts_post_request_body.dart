// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './alerts_post_request_body_alert_type.dart';
import './alerts_post_request_body_usage_threshold.dart';

/// auto generated
class AlertsPostRequestBody implements Parsable {
  ///  The type of alert to create.
  AlertsPostRequestBodyAlertType? alertType;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The title of the alert.
  String? title;

  ///  The configuration of the usage threshold.
  AlertsPostRequestBodyUsageThreshold? usageThreshold;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AlertsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AlertsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alert_type'] = (node) => alertType =
        node.getEnumValue<AlertsPostRequestBodyAlertType>((stringValue) =>
            AlertsPostRequestBodyAlertType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['title'] = (node) => title = node.getStringValue();
    deserializerMap['usage_threshold'] = (node) => usageThreshold =
        node.getObjectValue<AlertsPostRequestBodyUsageThreshold>(
            AlertsPostRequestBodyUsageThreshold.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AlertsPostRequestBodyAlertType>(
        'alert_type', alertType, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('title', title);
    writer.writeObjectValue<AlertsPostRequestBodyUsageThreshold>(
        'usage_threshold', usageThreshold);
  }
}
