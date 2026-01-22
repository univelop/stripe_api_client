// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './features_post_request_body_metadata.dart';

/// auto generated
class FeaturesPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  A unique key you provide as your own system identifier. This may be up to 80 characters.
  String? lookupKey;

  ///  Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  FeaturesPostRequestBodyMetadata? metadata;

  ///  The feature's name, for your own purpose, not meant to be displayable to the customer.
  String? name;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static FeaturesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return FeaturesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['lookup_key'] = (node) => lookupKey = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<FeaturesPostRequestBodyMetadata>(
            FeaturesPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('lookup_key', lookupKey);
    writer.writeObjectValue<FeaturesPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
  }
}
