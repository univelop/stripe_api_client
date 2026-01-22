// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_link_post_request_body_invoice_creation_invoice_data_rendering_options_member1_amount_tax_display.dart';

/// auto generated
class WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount_tax_display property
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1AmountTaxDisplay?
      amountTaxDisplay;

  ///  The template property
  String? template;

  /// Instantiates a new [WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1] and sets the default values.
  WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'amount_tax_display'] = (node) => amountTaxDisplay = node.getEnumValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1AmountTaxDisplay>(
        (stringValue) =>
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1AmountTaxDisplay
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['template'] = (node) => template = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            WithPaymentLinkPostRequestBodyInvoiceCreationInvoiceDataRenderingOptionsMember1AmountTaxDisplay>(
        'amount_tax_display', amountTaxDisplay, (e) => e?.value);
    writer.writeStringValue('template', template);
    writer.writeAdditionalData(additionalData);
  }
}
