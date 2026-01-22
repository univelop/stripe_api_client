// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_rendering_pdf_page_size.dart';

/// auto generated
class InvoicesPostRequestBodyRenderingPdf
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The page_size property
  InvoicesPostRequestBodyRenderingPdfPageSize? pageSize;

  /// Instantiates a new [InvoicesPostRequestBodyRenderingPdf] and sets the default values.
  InvoicesPostRequestBodyRenderingPdf() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyRenderingPdf createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPostRequestBodyRenderingPdf();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['page_size'] = (node) => pageSize =
        node.getEnumValue<InvoicesPostRequestBodyRenderingPdfPageSize>(
            (stringValue) => InvoicesPostRequestBodyRenderingPdfPageSize.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<InvoicesPostRequestBodyRenderingPdfPageSize>(
        'page_size', pageSize, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
