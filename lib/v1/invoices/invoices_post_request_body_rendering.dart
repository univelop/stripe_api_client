// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_rendering_amount_tax_display.dart';
import './invoices_post_request_body_rendering_pdf.dart';
import './invoices_post_request_body_rendering_template_version.dart';

/// auto generated
/// The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
class InvoicesPostRequestBodyRendering
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount_tax_display property
  InvoicesPostRequestBodyRenderingAmountTaxDisplay? amountTaxDisplay;

  ///  The pdf property
  InvoicesPostRequestBodyRenderingPdf? pdf;

  ///  The template property
  String? template;

  ///  The template_version property
  InvoicesPostRequestBodyRenderingTemplateVersion? templateVersion;

  /// Instantiates a new [InvoicesPostRequestBodyRendering] and sets the default values.
  InvoicesPostRequestBodyRendering() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyRendering createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPostRequestBodyRendering();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_tax_display'] = (node) => amountTaxDisplay =
        node.getEnumValue<InvoicesPostRequestBodyRenderingAmountTaxDisplay>(
            (stringValue) => InvoicesPostRequestBodyRenderingAmountTaxDisplay
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['pdf'] = (node) => pdf =
        node.getObjectValue<InvoicesPostRequestBodyRenderingPdf>(
            InvoicesPostRequestBodyRenderingPdf.createFromDiscriminatorValue);
    deserializerMap['template'] = (node) => template = node.getStringValue();
    deserializerMap['template_version'] = (node) => templateVersion =
        node.getObjectValue<InvoicesPostRequestBodyRenderingTemplateVersion>(
            InvoicesPostRequestBodyRenderingTemplateVersion
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<InvoicesPostRequestBodyRenderingAmountTaxDisplay>(
        'amount_tax_display', amountTaxDisplay, (e) => e?.value);
    writer.writeObjectValue<InvoicesPostRequestBodyRenderingPdf>('pdf', pdf);
    writer.writeStringValue('template', template);
    writer.writeObjectValue<InvoicesPostRequestBodyRenderingTemplateVersion>(
        'template_version', templateVersion);
    writer.writeAdditionalData(additionalData);
  }
}
