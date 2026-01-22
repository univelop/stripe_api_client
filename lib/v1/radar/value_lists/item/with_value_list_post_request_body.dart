// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_value_list_post_request_body_metadata.dart';

/// auto generated
class WithValueListPostRequestBody implements Parsable {
  ///  The name of the value list for use in rules.
  String? alias;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  WithValueListPostRequestBodyMetadata? metadata;

  ///  The human-readable name of the value list.
  String? name;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithValueListPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithValueListPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['alias'] = (node) => alias = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithValueListPostRequestBodyMetadata>(
            WithValueListPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('alias', alias);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<WithValueListPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
  }
}
