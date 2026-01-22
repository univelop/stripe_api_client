// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class NotificationEventRequest implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the API request that caused the event. If null, the event was automatic (e.g., Stripe's automatic subscription handling). Request logs are available in the [dashboard](https://dashboard.stripe.com/logs), but currently not in the API.
  String? id;

  ///  The idempotency key transmitted during the request, if any. *Note: This property is populated only for events on or after May 23, 2017*.
  String? idempotencyKey;

  /// Instantiates a new [NotificationEventRequest] and sets the default values.
  NotificationEventRequest() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static NotificationEventRequest createFromDiscriminatorValue(
      ParseNode parseNode) {
    return NotificationEventRequest();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['idempotency_key'] =
        (node) => idempotencyKey = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeStringValue('idempotency_key', idempotencyKey);
    writer.writeAdditionalData(additionalData);
  }
}
