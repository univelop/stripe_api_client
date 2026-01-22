// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './collect_inputs_post_request_body_inputs.dart';
import './collect_inputs_post_request_body_metadata.dart';

/// auto generated
class CollectInputsPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  List of inputs to be collected from the customer using the Reader. Maximum 5 inputs.
  Iterable<CollectInputsPostRequestBodyInputs>? inputs;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CollectInputsPostRequestBodyMetadata? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CollectInputsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CollectInputsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['inputs'] = (node) => inputs =
        node.getCollectionOfObjectValues<CollectInputsPostRequestBodyInputs>(
            CollectInputsPostRequestBodyInputs.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CollectInputsPostRequestBodyMetadata>(
            CollectInputsPostRequestBodyMetadata.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeCollectionOfObjectValues<CollectInputsPostRequestBodyInputs>(
        'inputs', inputs);
    writer.writeObjectValue<CollectInputsPostRequestBodyMetadata>(
        'metadata', metadata);
  }
}
