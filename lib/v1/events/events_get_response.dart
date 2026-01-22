// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/event.dart';
import './events_get_response_object.dart';

/// auto generated
class EventsGetResponse implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The data property
  Iterable<Event>? data;

  ///  True if this list has another page of items after this one that can be fetched.
  bool? hasMore;

  ///  String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
  EventsGetResponseObject? object;

  ///  The URL where this list can be accessed.
  String? url;

  /// Instantiates a new [EventsGetResponse] and sets the default values.
  EventsGetResponse() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static EventsGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
    return EventsGetResponse();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['data'] = (node) => data = node
        .getCollectionOfObjectValues<Event>(Event.createFromDiscriminatorValue);
    deserializerMap['has_more'] = (node) => hasMore = node.getBoolValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<EventsGetResponseObject>((stringValue) =>
            EventsGetResponseObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<Event>('data', data);
    writer.writeBoolValue('has_more', value: hasMore);
    writer.writeEnumValue<EventsGetResponseObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
