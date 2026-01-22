// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './forwarded_request_header.dart';

/// auto generated
/// Details about the response from the destination endpoint.
class ForwardedResponseDetails implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The response body from the destination endpoint to Stripe.
  String? body;

  ///  HTTP headers that the destination endpoint returned.
  Iterable<ForwardedRequestHeader>? headers;

  ///  The HTTP status code that the destination endpoint returned.
  int? status;

  /// Instantiates a new [ForwardedResponseDetails] and sets the default values.
  ForwardedResponseDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ForwardedResponseDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ForwardedResponseDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['body'] = (node) => body = node.getStringValue();
    deserializerMap['headers'] = (node) => headers =
        node.getCollectionOfObjectValues<ForwardedRequestHeader>(
            ForwardedRequestHeader.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('body', body);
    writer.writeCollectionOfObjectValues<ForwardedRequestHeader>(
        'headers', headers);
    writer.writeIntValue('status', status);
    writer.writeAdditionalData(additionalData);
  }
}
