// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_meter_resource_customer_mapping_settings_type.dart';

/// auto generated
class BillingMeterResourceCustomerMappingSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The key in the meter event payload to use for mapping the event to a customer.
  String? eventPayloadKey;

  ///  The method for mapping a meter event to a customer.
  BillingMeterResourceCustomerMappingSettingsType? type_;

  /// Instantiates a new [BillingMeterResourceCustomerMappingSettings] and sets the default values.
  BillingMeterResourceCustomerMappingSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingMeterResourceCustomerMappingSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return BillingMeterResourceCustomerMappingSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['event_payload_key'] =
        (node) => eventPayloadKey = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BillingMeterResourceCustomerMappingSettingsType>(
            (stringValue) => BillingMeterResourceCustomerMappingSettingsType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('event_payload_key', eventPayloadKey);
    writer.writeEnumValue<BillingMeterResourceCustomerMappingSettingsType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
