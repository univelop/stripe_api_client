// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class MetersPostRequestBody implements Parsable {
  ///  The meter’s name. Not visible to the customer.
  String? displayName;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MetersPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MetersPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('display_name', displayName);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
