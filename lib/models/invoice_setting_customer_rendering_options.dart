// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class InvoiceSettingCustomerRenderingOptions
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
  String? amountTaxDisplay;

  ///  ID of the invoice rendering template to be used for this customer's invoices. If set, the template will be used on all invoices for this customer unless a template is set directly on the invoice.
  String? template;

  /// Instantiates a new [InvoiceSettingCustomerRenderingOptions] and sets the default values.
  InvoiceSettingCustomerRenderingOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceSettingCustomerRenderingOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceSettingCustomerRenderingOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_tax_display'] =
        (node) => amountTaxDisplay = node.getStringValue();
    deserializerMap['template'] = (node) => template = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('amount_tax_display', amountTaxDisplay);
    writer.writeStringValue('template', template);
    writer.writeAdditionalData(additionalData);
  }
}
