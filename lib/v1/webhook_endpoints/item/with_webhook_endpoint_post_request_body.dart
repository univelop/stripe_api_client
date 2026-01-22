// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_webhook_endpoint_post_request_body_description.dart';
import './with_webhook_endpoint_post_request_body_enabled_events.dart';

/// auto generated
class WithWebhookEndpointPostRequestBody implements Parsable {
  ///  An optional description of what the webhook is used for.
  WithWebhookEndpointPostRequestBodyDescription? description;

  ///  Disable the webhook endpoint if set to true.
  bool? disabled;

  ///  The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
  Iterable<WithWebhookEndpointPostRequestBodyEnabledEvents>? enabledEvents;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The URL of the webhook endpoint.
  String? url;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithWebhookEndpointPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithWebhookEndpointPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<WithWebhookEndpointPostRequestBodyDescription>(
            WithWebhookEndpointPostRequestBodyDescription
                .createFromDiscriminatorValue);
    deserializerMap['disabled'] = (node) => disabled = node.getBoolValue();
    deserializerMap['enabled_events'] = (node) => enabledEvents =
        node.getCollectionOfEnumValues<
                WithWebhookEndpointPostRequestBodyEnabledEvents>(
            (stringValue) => WithWebhookEndpointPostRequestBodyEnabledEvents
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithWebhookEndpointPostRequestBodyDescription>(
        'description', description);
    writer.writeBoolValue('disabled', value: disabled);
    writer.writeCollectionOfEnumValues<
            WithWebhookEndpointPostRequestBodyEnabledEvents>(
        'enabled_events', enabledEvents, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('url', url);
  }
}
