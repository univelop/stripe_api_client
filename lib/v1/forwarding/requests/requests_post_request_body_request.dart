// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './requests_post_request_body_request_headers.dart';

/// auto generated
/// The request body and headers to be sent to the destination endpoint.
class RequestsPostRequestBodyRequest implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The body property
  String? body;

  ///  The headers property
  Iterable<RequestsPostRequestBodyRequestHeaders>? headers;

  /// Instantiates a new [RequestsPostRequestBodyRequest] and sets the default values.
  RequestsPostRequestBodyRequest() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RequestsPostRequestBodyRequest createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RequestsPostRequestBodyRequest();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['body'] = (node) => body = node.getStringValue();
    deserializerMap['headers'] = (node) => headers =
        node.getCollectionOfObjectValues<RequestsPostRequestBodyRequestHeaders>(
            RequestsPostRequestBodyRequestHeaders.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('body', body);
    writer.writeCollectionOfObjectValues<RequestsPostRequestBodyRequestHeaders>(
        'headers', headers);
    writer.writeAdditionalData(additionalData);
  }
}
