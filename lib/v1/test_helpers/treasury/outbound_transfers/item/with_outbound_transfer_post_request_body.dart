// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_outbound_transfer_post_request_body_tracking_details.dart';

/// auto generated
class WithOutboundTransferPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Details about network-specific tracking information.
  WithOutboundTransferPostRequestBodyTrackingDetails? trackingDetails;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithOutboundTransferPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithOutboundTransferPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['tracking_details'] = (node) => trackingDetails =
        node.getObjectValue<WithOutboundTransferPostRequestBodyTrackingDetails>(
            WithOutboundTransferPostRequestBodyTrackingDetails
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithOutboundTransferPostRequestBodyTrackingDetails>(
        'tracking_details', trackingDetails);
  }
}
