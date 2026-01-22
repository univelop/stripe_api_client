// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './close_post_request_body_forwarding_settings.dart';

/// auto generated
class ClosePostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A different bank account where funds can be deposited/debited in order to get the closing FA's balance to $0
  ClosePostRequestBodyForwardingSettings? forwardingSettings;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ClosePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ClosePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['forwarding_settings'] = (node) => forwardingSettings =
        node.getObjectValue<ClosePostRequestBodyForwardingSettings>(
            ClosePostRequestBodyForwardingSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<ClosePostRequestBodyForwardingSettings>(
        'forwarding_settings', forwardingSettings);
  }
}
