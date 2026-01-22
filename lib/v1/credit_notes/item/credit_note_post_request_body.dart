// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_note_post_request_body_metadata.dart';

/// auto generated
class CreditNotePostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Credit note memo.
  String? memo;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  CreditNotePostRequestBodyMetadata? metadata;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditNotePostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditNotePostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['memo'] = (node) => memo = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<CreditNotePostRequestBodyMetadata>(
            CreditNotePostRequestBodyMetadata.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('memo', memo);
    writer.writeObjectValue<CreditNotePostRequestBodyMetadata>(
        'metadata', metadata);
  }
}
