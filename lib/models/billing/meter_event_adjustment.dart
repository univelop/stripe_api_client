// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../billing_meter_resource_billing_meter_event_adjustment_cancel.dart';
import './meter_event_adjustment_object.dart';
import './meter_event_adjustment_status.dart';
import './meter_event_adjustment_type.dart';

/// auto generated
/// A billing meter event adjustment is a resource that allows you to cancel a meter event. For example, you might create a billing meter event adjustment to cancel a meter event that was created in error or attached to the wrong customer.
class MeterEventAdjustment implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Specifies which event to cancel.
  BillingMeterResourceBillingMeterEventAdjustmentCancel? cancel;

  ///  The name of the meter event. Corresponds with the `event_name` field on a meter.
  String? eventName;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  MeterEventAdjustmentObject? object;

  ///  The meter event adjustment's status.
  MeterEventAdjustmentStatus? status;

  ///  Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
  MeterEventAdjustmentType? type_;

  /// Instantiates a new [MeterEventAdjustment] and sets the default values.
  MeterEventAdjustment() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MeterEventAdjustment createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MeterEventAdjustment();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cancel'] = (node) => cancel = node
        .getObjectValue<BillingMeterResourceBillingMeterEventAdjustmentCancel>(
            BillingMeterResourceBillingMeterEventAdjustmentCancel
                .createFromDiscriminatorValue);
    deserializerMap['event_name'] = (node) => eventName = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<MeterEventAdjustmentObject>((stringValue) =>
            MeterEventAdjustmentObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<MeterEventAdjustmentStatus>((stringValue) =>
            MeterEventAdjustmentStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<MeterEventAdjustmentType>((stringValue) =>
            MeterEventAdjustmentType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            BillingMeterResourceBillingMeterEventAdjustmentCancel>(
        'cancel', cancel);
    writer.writeStringValue('event_name', eventName);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<MeterEventAdjustmentObject>(
        'object', object, (e) => e?.value);
    writer.writeEnumValue<MeterEventAdjustmentStatus>(
        'status', status, (e) => e?.value);
    writer.writeEnumValue<MeterEventAdjustmentType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
