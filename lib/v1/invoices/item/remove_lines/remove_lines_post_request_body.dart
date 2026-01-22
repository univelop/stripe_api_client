// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './remove_lines_post_request_body_lines.dart';

/// auto generated
class RemoveLinesPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? invoiceMetadata;

  ///  The line items to remove.
  Iterable<RemoveLinesPostRequestBodyLines>? lines;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static RemoveLinesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return RemoveLinesPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['invoice_metadata'] =
        (node) => invoiceMetadata = node.getStringValue();
    deserializerMap['lines'] = (node) => lines =
        node.getCollectionOfObjectValues<RemoveLinesPostRequestBodyLines>(
            RemoveLinesPostRequestBodyLines.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('invoice_metadata', invoiceMetadata);
    writer.writeCollectionOfObjectValues<RemoveLinesPostRequestBodyLines>(
        'lines', lines);
  }
}
