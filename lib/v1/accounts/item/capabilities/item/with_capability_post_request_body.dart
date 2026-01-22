// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class WithCapabilityPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  To request a new capability for an account, pass true. There can be a delay before the requested capability becomes active. If the capability has any activation requirements, the response includes them in the `requirements` arrays.If a capability isn't permanent, you can remove it from the account by passing false. Some capabilities are permanent after they've been requested. Attempting to remove a permanent capability returns an error.
  bool? requested;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCapabilityPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCapabilityPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['requested'] = (node) => requested = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeBoolValue('requested', value: requested);
  }
}
