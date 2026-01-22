// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './alerts_post_request_body_usage_threshold_filters_type.dart';

/// auto generated
class AlertsPostRequestBodyUsageThresholdFilters
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer property
  String? customer;

  ///  The type property
  AlertsPostRequestBodyUsageThresholdFiltersType? type_;

  /// Instantiates a new [AlertsPostRequestBodyUsageThresholdFilters] and sets the default values.
  AlertsPostRequestBodyUsageThresholdFilters() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AlertsPostRequestBodyUsageThresholdFilters
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AlertsPostRequestBodyUsageThresholdFilters();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<AlertsPostRequestBodyUsageThresholdFiltersType>(
            (stringValue) => AlertsPostRequestBodyUsageThresholdFiltersType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('customer', customer);
    writer.writeEnumValue<AlertsPostRequestBodyUsageThresholdFiltersType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
