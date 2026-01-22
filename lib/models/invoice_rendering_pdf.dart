// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_rendering_pdf_page_size.dart';

/// auto generated
class InvoiceRenderingPdf implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
  InvoiceRenderingPdfPageSize? pageSize;

  /// Instantiates a new [InvoiceRenderingPdf] and sets the default values.
  InvoiceRenderingPdf() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceRenderingPdf createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoiceRenderingPdf();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['page_size'] = (node) => pageSize =
        node.getEnumValue<InvoiceRenderingPdfPageSize>((stringValue) =>
            InvoiceRenderingPdfPageSize.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<InvoiceRenderingPdfPageSize>(
        'page_size', pageSize, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
