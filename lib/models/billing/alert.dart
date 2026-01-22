// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../thresholds_resource_usage_threshold_config.dart';
import './alert_alert_type.dart';
import './alert_object.dart';
import './alert_status.dart';

/// auto generated
/// A billing alert is a resource that notifies you when a certain usage threshold on a meter is crossed. For example, you might create a billing alert to notify you when a certain user made 100 API requests.
class Alert implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Defines the type of the alert.
  AlertAlertType? alertType;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  AlertObject? object;

  ///  Status of the alert. This can be active, inactive or archived.
  AlertStatus? status;

  ///  Title of the alert.
  String? title;

  ///  Encapsulates configuration of the alert to monitor usage on a specific [Billing Meter](https://docs.stripe.com/api/billing/meter).
  ThresholdsResourceUsageThresholdConfig? usageThreshold;

  /// Instantiates a new [Alert] and sets the default values.
  Alert() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Alert createFromDiscriminatorValue(ParseNode parseNode) {
    return Alert();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alert_type'] = (node) => alertType =
        node.getEnumValue<AlertAlertType>((stringValue) => AlertAlertType.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AlertObject>((stringValue) => AlertObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<AlertStatus>((stringValue) => AlertStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['title'] = (node) => title = node.getStringValue();
    deserializerMap['usage_threshold'] = (node) => usageThreshold =
        node.getObjectValue<ThresholdsResourceUsageThresholdConfig>(
            ThresholdsResourceUsageThresholdConfig
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AlertAlertType>(
        'alert_type', alertType, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<AlertObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<AlertStatus>('status', status, (e) => e?.value);
    writer.writeStringValue('title', title);
    writer.writeObjectValue<ThresholdsResourceUsageThresholdConfig>(
        'usage_threshold', usageThreshold);
    writer.writeAdditionalData(additionalData);
  }
}
