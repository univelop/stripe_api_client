// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_rendering_pdf.dart';

/// auto generated
class InvoicesResourceInvoiceRendering
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
  String? amountTaxDisplay;

  ///  Invoice pdf rendering options
  InvoiceRenderingPdf? pdf;

  ///  ID of the rendering template that the invoice is formatted by.
  String? template;

  ///  Version of the rendering template that the invoice is using.
  int? templateVersion;

  /// Instantiates a new [InvoicesResourceInvoiceRendering] and sets the default values.
  InvoicesResourceInvoiceRendering() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesResourceInvoiceRendering createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesResourceInvoiceRendering();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_tax_display'] =
        (node) => amountTaxDisplay = node.getStringValue();
    deserializerMap['pdf'] = (node) => pdf =
        node.getObjectValue<InvoiceRenderingPdf>(
            InvoiceRenderingPdf.createFromDiscriminatorValue);
    deserializerMap['template'] = (node) => template = node.getStringValue();
    deserializerMap['template_version'] =
        (node) => templateVersion = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('amount_tax_display', amountTaxDisplay);
    writer.writeObjectValue<InvoiceRenderingPdf>('pdf', pdf);
    writer.writeStringValue('template', template);
    writer.writeIntValue('template_version', templateVersion);
    writer.writeAdditionalData(additionalData);
  }
}
