// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './succeed_input_collection_post_request_body_skip_non_required_inputs.dart';

/// auto generated
class SucceedInputCollectionPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  This parameter defines the skip behavior for input collection.
  SucceedInputCollectionPostRequestBodySkipNonRequiredInputs?
      skipNonRequiredInputs;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SucceedInputCollectionPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SucceedInputCollectionPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['skip_non_required_inputs'] = (node) =>
        skipNonRequiredInputs = node.getEnumValue<
                SucceedInputCollectionPostRequestBodySkipNonRequiredInputs>(
            (stringValue) =>
                SucceedInputCollectionPostRequestBodySkipNonRequiredInputs
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeEnumValue<
            SucceedInputCollectionPostRequestBodySkipNonRequiredInputs>(
        'skip_non_required_inputs', skipNonRequiredInputs, (e) => e?.value);
  }
}
