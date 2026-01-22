// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class BillingMeterResourceBillingMeterValue
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The key in the meter event payload to use as the value for this meter.
  String? eventPayloadKey;

  /// Instantiates a new [BillingMeterResourceBillingMeterValue] and sets the default values.
  BillingMeterResourceBillingMeterValue() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingMeterResourceBillingMeterValue createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BillingMeterResourceBillingMeterValue();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['event_payload_key'] =
        (node) => eventPayloadKey = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('event_payload_key', eventPayloadKey);
    writer.writeAdditionalData(additionalData);
  }
}
