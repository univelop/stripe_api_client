// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './meters_post_request_body_customer_mapping.dart';
import './meters_post_request_body_default_aggregation.dart';
import './meters_post_request_body_event_time_window.dart';
import './meters_post_request_body_value_settings.dart';

/// auto generated
class MetersPostRequestBody implements Parsable {
  ///  Fields that specify how to map a meter event to a customer.
  MetersPostRequestBodyCustomerMapping? customerMapping;

  ///  The default settings to aggregate a meter's events with.
  MetersPostRequestBodyDefaultAggregation? defaultAggregation;

  ///  The meter’s name. Not visible to the customer.
  String? displayName;

  ///  The name of the meter event to record usage for. Corresponds with the `event_name` field on meter events.
  String? eventName;

  ///  The time window which meter events have been pre-aggregated for, if any.
  MetersPostRequestBodyEventTimeWindow? eventTimeWindow;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Fields that specify how to calculate a meter event's value.
  MetersPostRequestBodyValueSettings? valueSettings;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MetersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MetersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['customer_mapping'] = (node) => customerMapping =
        node.getObjectValue<MetersPostRequestBodyCustomerMapping>(
            MetersPostRequestBodyCustomerMapping.createFromDiscriminatorValue);
    deserializerMap['default_aggregation'] = (node) => defaultAggregation =
        node.getObjectValue<MetersPostRequestBodyDefaultAggregation>(
            MetersPostRequestBodyDefaultAggregation
                .createFromDiscriminatorValue);
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['event_name'] = (node) => eventName = node.getStringValue();
    deserializerMap['event_time_window'] = (node) => eventTimeWindow =
        node.getEnumValue<MetersPostRequestBodyEventTimeWindow>((stringValue) =>
            MetersPostRequestBodyEventTimeWindow.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['value_settings'] = (node) => valueSettings =
        node.getObjectValue<MetersPostRequestBodyValueSettings>(
            MetersPostRequestBodyValueSettings.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<MetersPostRequestBodyCustomerMapping>(
        'customer_mapping', customerMapping);
    writer.writeObjectValue<MetersPostRequestBodyDefaultAggregation>(
        'default_aggregation', defaultAggregation);
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('event_name', eventName);
    writer.writeEnumValue<MetersPostRequestBodyEventTimeWindow>(
        'event_time_window', eventTimeWindow, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<MetersPostRequestBodyValueSettings>(
        'value_settings', valueSettings);
  }
}
