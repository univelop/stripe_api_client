// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './meters_post_request_body_customer_mapping_type.dart';

/// auto generated
/// Fields that specify how to map a meter event to a customer.
class MetersPostRequestBodyCustomerMapping
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The event_payload_key property
  String? eventPayloadKey;

  ///  The type property
  MetersPostRequestBodyCustomerMappingType? type_;

  /// Instantiates a new [MetersPostRequestBodyCustomerMapping] and sets the default values.
  MetersPostRequestBodyCustomerMapping() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MetersPostRequestBodyCustomerMapping createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MetersPostRequestBodyCustomerMapping();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['event_payload_key'] =
        (node) => eventPayloadKey = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<MetersPostRequestBodyCustomerMappingType>(
            (stringValue) => MetersPostRequestBodyCustomerMappingType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('event_payload_key', eventPayloadKey);
    writer.writeEnumValue<MetersPostRequestBodyCustomerMappingType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
