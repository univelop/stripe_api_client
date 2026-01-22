// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../billing_meter_resource_aggregation_settings.dart';
import '../billing_meter_resource_billing_meter_status_transitions.dart';
import '../billing_meter_resource_billing_meter_value.dart';
import '../billing_meter_resource_customer_mapping_settings.dart';
import './meter_event_time_window.dart';
import './meter_object.dart';
import './meter_status.dart';

/// auto generated
/// Meters specify how to aggregate meter events over a billing period. Meter events represent the actions that customers take in your system. Meters attach to prices and form the basis of the bill.Related guide: [Usage based billing](https://docs.stripe.com/billing/subscriptions/usage-based)
class Meter implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The customer_mapping property
  BillingMeterResourceCustomerMappingSettings? customerMapping;

  ///  The default_aggregation property
  BillingMeterResourceAggregationSettings? defaultAggregation;

  ///  The meter's name.
  String? displayName;

  ///  The name of the meter event to record usage for. Corresponds with the `event_name` field on meter events.
  String? eventName;

  ///  The time window which meter events have been pre-aggregated for, if any.
  MeterEventTimeWindow? eventTimeWindow;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  String representing the object's type. Objects of the same type share the same value.
  MeterObject? object;

  ///  The meter's status.
  MeterStatus? status;

  ///  The status_transitions property
  BillingMeterResourceBillingMeterStatusTransitions? statusTransitions;

  ///  Time at which the object was last updated. Measured in seconds since the Unix epoch.
  int? updated;

  ///  The value_settings property
  BillingMeterResourceBillingMeterValue? valueSettings;

  /// Instantiates a new [Meter] and sets the default values.
  Meter() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Meter createFromDiscriminatorValue(ParseNode parseNode) {
    return Meter();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['customer_mapping'] = (node) => customerMapping =
        node.getObjectValue<BillingMeterResourceCustomerMappingSettings>(
            BillingMeterResourceCustomerMappingSettings
                .createFromDiscriminatorValue);
    deserializerMap['default_aggregation'] = (node) => defaultAggregation =
        node.getObjectValue<BillingMeterResourceAggregationSettings>(
            BillingMeterResourceAggregationSettings
                .createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['event_name'] = (node) => eventName = node.getStringValue();
    deserializerMap['event_time_window'] = (node) => eventTimeWindow =
        node.getEnumValue<MeterEventTimeWindow>((stringValue) =>
            MeterEventTimeWindow.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<MeterObject>((stringValue) => MeterObject.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<MeterStatus>((stringValue) => MeterStatus.values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['status_transitions'] = (node) => statusTransitions =
        node.getObjectValue<BillingMeterResourceBillingMeterStatusTransitions>(
            BillingMeterResourceBillingMeterStatusTransitions
                .createFromDiscriminatorValue);
    deserializerMap['updated'] = (node) => updated = node.getIntValue();
    deserializerMap['value_settings'] = (node) => valueSettings =
        node.getObjectValue<BillingMeterResourceBillingMeterValue>(
            BillingMeterResourceBillingMeterValue.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('created', created);
    writer.writeObjectValue<BillingMeterResourceCustomerMappingSettings>(
        'customer_mapping', customerMapping);
    writer.writeObjectValue<BillingMeterResourceAggregationSettings>(
        'default_aggregation', defaultAggregation);
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('event_name', eventName);
    writer.writeEnumValue<MeterEventTimeWindow>(
        'event_time_window', eventTimeWindow, (e) => e?.value);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeEnumValue<MeterObject>('object', object, (e) => e?.value);
    writer.writeEnumValue<MeterStatus>('status', status, (e) => e?.value);
    writer.writeObjectValue<BillingMeterResourceBillingMeterStatusTransitions>(
        'status_transitions', statusTransitions);
    writer.writeIntValue('updated', updated);
    writer.writeObjectValue<BillingMeterResourceBillingMeterValue>(
        'value_settings', valueSettings);
    writer.writeAdditionalData(additionalData);
  }
}
