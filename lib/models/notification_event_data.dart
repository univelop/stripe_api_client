// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './notification_event_data_object.dart';
import './notification_event_data_previous_attributes.dart';

/// auto generated
class NotificationEventData implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Object containing the API resource relevant to the event. For example, an `invoice.created` event will have a full [invoice object](https://api.stripe.com#invoice_object) as the value of the object key.
  NotificationEventDataObject? object;

  ///  Object containing the names of the updated attributes and their values prior to the event (only included in events of type `*.updated`). If an array attribute has any updated elements, this object contains the entire array. In Stripe API versions 2017-04-06 or earlier, an updated array attribute in this object includes only the updated array elements.
  NotificationEventDataPreviousAttributes? previousAttributes;

  /// Instantiates a new [NotificationEventData] and sets the default values.
  NotificationEventData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static NotificationEventData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return NotificationEventData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['object'] = (node) => object =
        node.getObjectValue<NotificationEventDataObject>(
            NotificationEventDataObject.createFromDiscriminatorValue);
    deserializerMap['previous_attributes'] = (node) => previousAttributes =
        node.getObjectValue<NotificationEventDataPreviousAttributes>(
            NotificationEventDataPreviousAttributes
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<NotificationEventDataObject>('object', object);
    writer.writeObjectValue<NotificationEventDataPreviousAttributes>(
        'previous_attributes', previousAttributes);
    writer.writeAdditionalData(additionalData);
  }
}
