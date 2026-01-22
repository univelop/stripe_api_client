// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class RespondPostRequestBody implements Parsable {
  ///  Whether to simulate the user confirming that the transaction was legitimate (true) or telling Stripe that it was fraudulent (false).
  bool? confirmed;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RespondPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RespondPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['confirmed'] = (node) => confirmed = node.getBoolValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('confirmed', value: confirmed);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
