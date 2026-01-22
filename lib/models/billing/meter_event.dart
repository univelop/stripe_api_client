// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './meter_event_object.dart';
import './meter_event_payload.dart';

/// auto generated
/// Meter events represent actions that customers take in your system. You can use meter events to bill a customer based on their usage. Meter events are associated with billing meters, which define both the contents of the event’s payload and how to aggregate those events.
class MeterEvent implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The name of the meter event. Corresponds with the `event_name` field on a meter.
  String? eventName;

  ///  A unique identifier for the event.
  String? identifier;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  MeterEventObject? object;

  ///  The payload of the event. This contains the fields corresponding to a meter's `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and `value_settings.event_payload_key` (default is `value`). Read more about the [payload](https://docs.stripe.com/billing/subscriptions/usage-based/meters/configure#meter-configuration-attributes).
  MeterEventPayload? payload;

  ///  The timestamp passed in when creating the event. Measured in seconds since the Unix epoch.
  int? timestamp;

  /// Instantiates a new [MeterEvent] and sets the default values.
  MeterEvent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MeterEvent createFromDiscriminatorValue(ParseNode parseNode) {
    return MeterEvent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['event_name'] = (node) => eventName = node.getStringValue();
    deserializerMap['identifier'] =
        (node) => identifier = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object = node
        .getEnumValue<MeterEventObject>((stringValue) => MeterEventObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['payload'] = (node) => payload =
        node.getObjectValue<MeterEventPayload>(
            MeterEventPayload.createFromDiscriminatorValue);
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeStringValue('event_name', eventName);
    writer.writeStringValue('identifier', identifier);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<MeterEventObject>('object', object, (e) => e?.value);
    writer.writeObjectValue<MeterEventPayload>('payload', payload);
    writer.writeIntValue('timestamp', timestamp);
    writer.writeAdditionalData(additionalData);
  }
}
