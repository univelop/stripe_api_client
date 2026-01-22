// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_rendering_amount_tax_display.dart';
import './with_invoice_post_request_body_rendering_pdf.dart';
import './with_invoice_post_request_body_rendering_template_version.dart';

/// auto generated
/// The rendering-related settings that control how the invoice is displayed on customer-facing surfaces such as PDF and Hosted Invoice Page.
class WithInvoicePostRequestBodyRendering
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount_tax_display property
  WithInvoicePostRequestBodyRenderingAmountTaxDisplay? amountTaxDisplay;

  ///  The pdf property
  WithInvoicePostRequestBodyRenderingPdf? pdf;

  ///  The template property
  String? template;

  ///  The template_version property
  WithInvoicePostRequestBodyRenderingTemplateVersion? templateVersion;

  /// Instantiates a new [WithInvoicePostRequestBodyRendering] and sets the default values.
  WithInvoicePostRequestBodyRendering() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyRendering createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithInvoicePostRequestBodyRendering();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_tax_display'] = (node) => amountTaxDisplay =
        node.getEnumValue<WithInvoicePostRequestBodyRenderingAmountTaxDisplay>(
            (stringValue) => WithInvoicePostRequestBodyRenderingAmountTaxDisplay
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['pdf'] = (node) => pdf = node.getObjectValue<
            WithInvoicePostRequestBodyRenderingPdf>(
        WithInvoicePostRequestBodyRenderingPdf.createFromDiscriminatorValue);
    deserializerMap['template'] = (node) => template = node.getStringValue();
    deserializerMap['template_version'] = (node) => templateVersion =
        node.getObjectValue<WithInvoicePostRequestBodyRenderingTemplateVersion>(
            WithInvoicePostRequestBodyRenderingTemplateVersion
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<WithInvoicePostRequestBodyRenderingAmountTaxDisplay>(
        'amount_tax_display', amountTaxDisplay, (e) => e?.value);
    writer.writeObjectValue<WithInvoicePostRequestBodyRenderingPdf>('pdf', pdf);
    writer.writeStringValue('template', template);
    writer.writeObjectValue<WithInvoicePostRequestBodyRenderingTemplateVersion>(
        'template_version', templateVersion);
    writer.writeAdditionalData(additionalData);
  }
}
