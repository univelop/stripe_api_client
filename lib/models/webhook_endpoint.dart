// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_endpoint_metadata.dart';
import './webhook_endpoint_object.dart';

/// auto generated
/// You can configure [webhook endpoints](https://docs.stripe.com/webhooks/) via the API to benotified about events that happen in your Stripe account or connectedaccounts.Most users configure webhooks from [the dashboard](https://dashboard.stripe.com/webhooks), which provides a user interface for registering and testing your webhook endpoints.Related guide: [Setting up webhooks](https://docs.stripe.com/webhooks/configure)
class WebhookEndpoint implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The API version events are rendered as for this webhook endpoint.
  String? apiVersion;

  ///  The ID of the associated Connect application.
  String? application;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  An optional description of what the webhook is used for.
  String? description;

  ///  The list of events to enable for this endpoint. `['*']` indicates that all events are enabled, except those that require explicit selection.
  Iterable<String>? enabledEvents;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  WebhookEndpointMetadata? metadata;

  ///  String representing the object's type. Objects of the same type share the same value.
  WebhookEndpointObject? object;

  ///  The endpoint's secret, used to generate [webhook signatures](https://docs.stripe.com/webhooks/signatures). Only returned at creation.
  String? secret;

  ///  The status of the webhook. It can be `enabled` or `disabled`.
  String? status;

  ///  The URL of the webhook endpoint.
  String? url;

  /// Instantiates a new [WebhookEndpoint] and sets the default values.
  WebhookEndpoint() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WebhookEndpoint createFromDiscriminatorValue(ParseNode parseNode) {
    return WebhookEndpoint();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['api_version'] =
        (node) => apiVersion = node.getStringValue();
    deserializerMap['application'] =
        (node) => application = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['enabled_events'] =
        (node) => enabledEvents = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WebhookEndpointMetadata>(
            WebhookEndpointMetadata.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<WebhookEndpointObject>((stringValue) =>
            WebhookEndpointObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['secret'] = (node) => secret = node.getStringValue();
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('api_version', apiVersion);
    writer.writeStringValue('application', application);
    writer.writeIntValue('created', created);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'enabled_events', enabledEvents);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<WebhookEndpointMetadata>('metadata', metadata);
    writer.writeEnumValue<WebhookEndpointObject>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('secret', secret);
    writer.writeStringValue('status', status);
    writer.writeStringValue('url', url);
    writer.writeAdditionalData(additionalData);
  }
}
