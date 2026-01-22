// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_invoice_settings_custom_fields.dart';
import './with_customer_post_request_body_invoice_settings_rendering_options.dart';

/// auto generated
/// Default invoice settings for this customer.
class WithCustomerPostRequestBodyInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The custom_fields property
  WithCustomerPostRequestBodyInvoiceSettingsCustomFields? customFields;

  ///  The default_payment_method property
  String? defaultPaymentMethod;

  ///  The footer property
  String? footer;

  ///  The rendering_options property
  WithCustomerPostRequestBodyInvoiceSettingsRenderingOptions? renderingOptions;

  /// Instantiates a new [WithCustomerPostRequestBodyInvoiceSettings] and sets the default values.
  WithCustomerPostRequestBodyInvoiceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBodyInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithCustomerPostRequestBodyInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_fields'] = (node) => customFields = node
        .getObjectValue<WithCustomerPostRequestBodyInvoiceSettingsCustomFields>(
            WithCustomerPostRequestBodyInvoiceSettingsCustomFields
                .createFromDiscriminatorValue);
    deserializerMap['default_payment_method'] =
        (node) => defaultPaymentMethod = node.getStringValue();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['rendering_options'] = (node) => renderingOptions =
        node.getObjectValue<
                WithCustomerPostRequestBodyInvoiceSettingsRenderingOptions>(
            WithCustomerPostRequestBodyInvoiceSettingsRenderingOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithCustomerPostRequestBodyInvoiceSettingsCustomFields>(
        'custom_fields', customFields);
    writer.writeStringValue('default_payment_method', defaultPaymentMethod);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<
            WithCustomerPostRequestBodyInvoiceSettingsRenderingOptions>(
        'rendering_options', renderingOptions);
    writer.writeAdditionalData(additionalData);
  }
}
