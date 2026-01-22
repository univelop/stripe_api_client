// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './meter_events_post_request_body_payload.dart';

/// auto generated
class MeterEventsPostRequestBody implements Parsable {
  ///  The name of the meter event. Corresponds with the `event_name` field on a meter.
  String? eventName;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A unique identifier for the event. If not provided, one is generated. We recommend using UUID-like identifiers. We will enforce uniqueness within a rolling period of at least 24 hours. The enforcement of uniqueness primarily addresses issues arising from accidental retries or other problems occurring within extremely brief time intervals. This approach helps prevent duplicate entries and ensures data integrity in high-frequency operations.
  String? identifier;

  ///  The payload of the event. This must contain the fields corresponding to a meter's `customer_mapping.event_payload_key` (default is `stripe_customer_id`) and `value_settings.event_payload_key` (default is `value`). Read more about the [payload](https://docs.stripe.com/billing/subscriptions/usage-based/meters/configure#meter-configuration-attributes).
  MeterEventsPostRequestBodyPayload? payload;

  ///  The time of the event. Measured in seconds since the Unix epoch. Must be within the past 35 calendar days or up to 5 minutes in the future. Defaults to current timestamp if not specified.
  int? timestamp;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MeterEventsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MeterEventsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['event_name'] = (node) => eventName = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['identifier'] =
        (node) => identifier = node.getStringValue();
    deserializerMap['payload'] = (node) => payload =
        node.getObjectValue<MeterEventsPostRequestBodyPayload>(
            MeterEventsPostRequestBodyPayload.createFromDiscriminatorValue);
    deserializerMap['timestamp'] = (node) => timestamp = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('event_name', eventName);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('identifier', identifier);
    writer.writeObjectValue<MeterEventsPostRequestBodyPayload>(
        'payload', payload);
    writer.writeIntValue('timestamp', timestamp);
  }
}
