// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_lines_post_request_body_lines.dart';

/// auto generated
class UpdateLinesPostRequestBody implements Parsable {
  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. For [type=subscription](https://docs.stripe.com/api/invoices/line_item#invoice_line_item_object-type) line items, the incoming metadata specified on the request is directly used to set this value, in contrast to [type=invoiceitem](api/invoices/line_item#invoice_line_item_object-type) line items, where any existing metadata on the invoice line is merged with the incoming data.
  String? invoiceMetadata;

  ///  The line items to update.
  Iterable<UpdateLinesPostRequestBodyLines>? lines;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static UpdateLinesPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return UpdateLinesPostRequestBody();
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
        node.getCollectionOfObjectValues<UpdateLinesPostRequestBodyLines>(
            UpdateLinesPostRequestBodyLines.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('invoice_metadata', invoiceMetadata);
    writer.writeCollectionOfObjectValues<UpdateLinesPostRequestBodyLines>(
        'lines', lines);
  }
}
