// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './meter_event_summary_object.dart';

/// auto generated
/// A billing meter event summary represents an aggregated view of a customer's billing meter events within a specified timeframe. It indicates how muchusage was accrued by a customer for that period.Note: Meters events are aggregated asynchronously so the meter event summaries provide an eventually consistent view of the reported usage.
class MeterEventSummary implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Aggregated value of all the events within `start_time` (inclusive) and `end_time` (inclusive). The aggregation strategy is defined on meter via `default_aggregation`.
  double? aggregatedValue;

  ///  End timestamp for this event summary (exclusive). Must be aligned with minute boundaries.
  int? endTime;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The meter associated with this event summary.
  String? meter;

  ///  String representing the object's type. Objects of the same type share the same value.
  MeterEventSummaryObject? object;

  ///  Start timestamp for this event summary (inclusive). Must be aligned with minute boundaries.
  int? startTime;

  /// Instantiates a new [MeterEventSummary] and sets the default values.
  MeterEventSummary() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MeterEventSummary createFromDiscriminatorValue(ParseNode parseNode) {
    return MeterEventSummary();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['aggregated_value'] =
        (node) => aggregatedValue = node.getDoubleValue();
    deserializerMap['end_time'] = (node) => endTime = node.getIntValue();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['meter'] = (node) => meter = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<MeterEventSummaryObject>((stringValue) =>
            MeterEventSummaryObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['start_time'] = (node) => startTime = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeDoubleValue('aggregated_value', aggregatedValue);
    writer.writeIntValue('end_time', endTime);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeStringValue('meter', meter);
    writer.writeEnumValue<MeterEventSummaryObject>(
        'object', object, (e) => e?.value);
    writer.writeIntValue('start_time', startTime);
    writer.writeAdditionalData(additionalData);
  }
}
