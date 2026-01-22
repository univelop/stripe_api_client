// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './requests_post_request_body_metadata.dart';
import './requests_post_request_body_replacements.dart';
import './requests_post_request_body_request.dart';

/// auto generated
class RequestsPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  RequestsPostRequestBodyMetadata? metadata;

  ///  The PaymentMethod to insert into the forwarded request. Forwarding previously consumed PaymentMethods is allowed.
  String? paymentMethod;

  ///  The field kinds to be replaced in the forwarded request.
  Iterable<RequestsPostRequestBodyReplacements>? replacements;

  ///  The request body and headers to be sent to the destination endpoint.
  RequestsPostRequestBodyRequest? request;

  ///  The destination URL for the forwarded request. Must be supported by the config.
  String? url;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RequestsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RequestsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<RequestsPostRequestBodyMetadata>(
            RequestsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['replacements'] = (node) => replacements =
        node.getCollectionOfEnumValues<RequestsPostRequestBodyReplacements>(
            (stringValue) => RequestsPostRequestBodyReplacements.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['request'] = (node) => request =
        node.getObjectValue<RequestsPostRequestBodyRequest>(
            RequestsPostRequestBodyRequest.createFromDiscriminatorValue);
    deserializerMap['url'] = (node) => url = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<RequestsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeCollectionOfEnumValues<RequestsPostRequestBodyReplacements>(
        'replacements', replacements, (e) => e?.value);
    writer.writeObjectValue<RequestsPostRequestBodyRequest>('request', request);
    writer.writeStringValue('url', url);
  }
}
