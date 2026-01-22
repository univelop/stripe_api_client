// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_endpoints_post_request_body_api_version.dart';
import './webhook_endpoints_post_request_body_description.dart';
import './webhook_endpoints_post_request_body_enabled_events.dart';

/// auto generated
class WebhookEndpointsPostRequestBody implements Parsable {
  ///  Events sent to this endpoint will be generated with this Stripe Version instead of your account's default Stripe Version.
  WebhookEndpointsPostRequestBodyApiVersion? apiVersion;

  ///  Whether this endpoint should receive events from connected accounts (`true`), or from your account (`false`). Defaults to `false`.
  bool? connect;

  ///  An optional description of what the webhook is used for.
  WebhookEndpointsPostRequestBodyDescription? description;

  ///  The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
  Iterable<WebhookEndpointsPostRequestBodyEnabledEvents>? enabledEvents;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  The URL of the webhook endpoint.
  String? url;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WebhookEndpointsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WebhookEndpointsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['api_version'] = (node) => apiVersion =
        node.getEnumValue<WebhookEndpointsPostRequestBodyApiVersion>(
            (stringValue) => WebhookEndpointsPostRequestBodyApiVersion.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['connect'] = (node) => connect = node.getBoolValue();
    deserializerMap['description'] = (node) => description =
        node.getObjectValue<WebhookEndpointsPostRequestBodyDescription>(
            WebhookEndpointsPostRequestBodyDescription
                .createFromDiscriminatorValue);
    deserializerMap['enabled_events'] = (node) => enabledEvents =
        node.getCollectionOfEnumValues<
                WebhookEndpointsPostRequestBodyEnabledEvents>(
            (stringValue) => WebhookEndpointsPostRequestBodyEnabledEvents.values
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
    writer.writeEnumValue<WebhookEndpointsPostRequestBodyApiVersion>(
        'api_version', apiVersion, (e) => e?.value);
    writer.writeBoolValue('connect', value: connect);
    writer.writeObjectValue<WebhookEndpointsPostRequestBodyDescription>(
        'description', description);
    writer.writeCollectionOfEnumValues<
            WebhookEndpointsPostRequestBodyEnabledEvents>(
        'enabled_events', enabledEvents, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('url', url);
  }
}
