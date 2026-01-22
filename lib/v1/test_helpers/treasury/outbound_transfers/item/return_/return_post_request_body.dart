// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './return_post_request_body_returned_details.dart';

/// auto generated
class ReturnPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Details about a returned OutboundTransfer.
  ReturnPostRequestBodyReturnedDetails? returnedDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReturnPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReturnPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['returned_details'] = (node) => returnedDetails =
        node.getObjectValue<ReturnPostRequestBodyReturnedDetails>(
            ReturnPostRequestBodyReturnedDetails.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ReturnPostRequestBodyReturnedDetails>(
        'returned_details', returnedDetails);
  }
}
