// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './forwarded_request_details_http_method.dart';
import './forwarded_request_header.dart';

/// auto generated
/// Details about the request forwarded to the destination endpoint.
class ForwardedRequestDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The body payload to send to the destination endpoint.
  String? body;

  ///  The headers to include in the forwarded request. Can be omitted if no additional headers (excluding Stripe-generated ones such as the Content-Type header) should be included.
  Iterable<ForwardedRequestHeader>? headers;

  ///  The HTTP method used to call the destination endpoint.
  ForwardedRequestDetailsHttpMethod? httpMethod;

  /// Instantiates a new [ForwardedRequestDetails] and sets the default values.
  ForwardedRequestDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ForwardedRequestDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ForwardedRequestDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['body'] = (node) => body = node.getStringValue();
    deserializerMap['headers'] = (node) => headers =
        node.getCollectionOfObjectValues<ForwardedRequestHeader>(
            ForwardedRequestHeader.createFromDiscriminatorValue);
    deserializerMap['http_method'] = (node) => httpMethod =
        node.getEnumValue<ForwardedRequestDetailsHttpMethod>((stringValue) =>
            ForwardedRequestDetailsHttpMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('body', body);
    writer.writeCollectionOfObjectValues<ForwardedRequestHeader>(
        'headers', headers);
    writer.writeEnumValue<ForwardedRequestDetailsHttpMethod>(
        'http_method', httpMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
