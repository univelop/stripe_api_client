// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class FinalizePostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
  int? expiresAt;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FinalizePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FinalizePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['expires_at'] = (node) => expiresAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeIntValue('expires_at', expiresAt);
  }
}
