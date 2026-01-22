// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './meter_event_adjustments_post_request_body_cancel.dart';
import './meter_event_adjustments_post_request_body_type.dart';

/// auto generated
class MeterEventAdjustmentsPostRequestBody implements Parsable {
  ///  Specifies which event to cancel.
  MeterEventAdjustmentsPostRequestBodyCancel? cancel;

  ///  The name of the meter event. Corresponds with the `event_name` field on a meter.
  String? eventName;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
  MeterEventAdjustmentsPostRequestBodyType? type_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MeterEventAdjustmentsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MeterEventAdjustmentsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cancel'] = (node) => cancel =
        node.getObjectValue<MeterEventAdjustmentsPostRequestBodyCancel>(
            MeterEventAdjustmentsPostRequestBodyCancel
                .createFromDiscriminatorValue);
    deserializerMap['event_name'] = (node) => eventName = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<MeterEventAdjustmentsPostRequestBodyType>(
            (stringValue) => MeterEventAdjustmentsPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<MeterEventAdjustmentsPostRequestBodyCancel>(
        'cancel', cancel);
    writer.writeStringValue('event_name', eventName);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeEnumValue<MeterEventAdjustmentsPostRequestBodyType>(
        'type', type_, (e) => e?.value);
  }
}
