// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customers_post_request_body_invoice_settings_rendering_options_member1_amount_tax_display.dart';

/// auto generated
class CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amount_tax_display property
  CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1AmountTaxDisplay?
      amountTaxDisplay;

  ///  The template property
  String? template;

  /// Instantiates a new [CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1] and sets the default values.
  CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap[
        'amount_tax_display'] = (node) => amountTaxDisplay = node.getEnumValue<
            CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1AmountTaxDisplay>(
        (stringValue) =>
            CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1AmountTaxDisplay
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
            CustomersPostRequestBodyInvoiceSettingsRenderingOptionsMember1AmountTaxDisplay>(
        'amount_tax_display', amountTaxDisplay, (e) => e?.value);
    writer.writeStringValue('template', template);
    writer.writeAdditionalData(additionalData);
  }
}
