// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './thresholds_resource_usage_alert_filter_customer.dart';
import './thresholds_resource_usage_alert_filter_type.dart';

/// auto generated
class ThresholdsResourceUsageAlertFilter
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Limit the scope of the alert to this customer ID
  ThresholdsResourceUsageAlertFilterCustomer? customer;

  ///  The type property
  ThresholdsResourceUsageAlertFilterType? type_;

  /// Instantiates a new [ThresholdsResourceUsageAlertFilter] and sets the default values.
  ThresholdsResourceUsageAlertFilter() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ThresholdsResourceUsageAlertFilter createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ThresholdsResourceUsageAlertFilter();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<ThresholdsResourceUsageAlertFilterCustomer>(
            ThresholdsResourceUsageAlertFilterCustomer
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ThresholdsResourceUsageAlertFilterType>(
            (stringValue) => ThresholdsResourceUsageAlertFilterType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ThresholdsResourceUsageAlertFilterCustomer>(
        'customer', customer);
    writer.writeEnumValue<ThresholdsResourceUsageAlertFilterType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
