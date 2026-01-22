// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customers_post_request_body_invoice_settings_custom_fields.dart';
import './customers_post_request_body_invoice_settings_rendering_options.dart';

/// auto generated
/// Default invoice settings for this customer.
class CustomersPostRequestBodyInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_fields property
  CustomersPostRequestBodyInvoiceSettingsCustomFields? customFields;

  ///  The default_payment_method property
  String? defaultPaymentMethod;

  ///  The footer property
  String? footer;

  ///  The rendering_options property
  CustomersPostRequestBodyInvoiceSettingsRenderingOptions? renderingOptions;

  /// Instantiates a new [CustomersPostRequestBodyInvoiceSettings] and sets the default values.
  CustomersPostRequestBodyInvoiceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomersPostRequestBodyInvoiceSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomersPostRequestBodyInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_fields'] = (node) => customFields = node
        .getObjectValue<CustomersPostRequestBodyInvoiceSettingsCustomFields>(
            CustomersPostRequestBodyInvoiceSettingsCustomFields
                .createFromDiscriminatorValue);
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['rendering_options'] = (node) => renderingOptions =
        node.getObjectValue<
                CustomersPostRequestBodyInvoiceSettingsRenderingOptions>(
            CustomersPostRequestBodyInvoiceSettingsRenderingOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<CustomersPostRequestBodyInvoiceSettingsCustomFields>(
            'custom_fields', customFields);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<
            CustomersPostRequestBodyInvoiceSettingsRenderingOptions>(
        'rendering_options', renderingOptions);
    writer.writeAdditionalData(additionalData);
  }
}
