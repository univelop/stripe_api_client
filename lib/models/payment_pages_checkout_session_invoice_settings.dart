// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './connect_account_reference.dart';
import './invoice_setting_checkout_rendering_options.dart';
import './invoice_setting_custom_field.dart';
import './payment_pages_checkout_session_invoice_settings_metadata.dart';

/// auto generated
class PaymentPagesCheckoutSessionInvoiceSettings
    implements AdditionalDataHolder, Parsable {
  ///  The account tax IDs associated with the invoice.
  Iterable<String>? accountTaxIds;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Custom fields displayed on the invoice.
  Iterable<InvoiceSettingCustomField>? customFields;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Footer displayed on the invoice.
  String? footer;

  ///  The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
  ConnectAccountReference? issuer;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PaymentPagesCheckoutSessionInvoiceSettingsMetadata? metadata;

  ///  Options for invoice PDF rendering.
  InvoiceSettingCheckoutRenderingOptions? renderingOptions;

  /// Instantiates a new [PaymentPagesCheckoutSessionInvoiceSettings] and sets the default values.
  PaymentPagesCheckoutSessionInvoiceSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentPagesCheckoutSessionInvoiceSettings
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentPagesCheckoutSessionInvoiceSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_tax_ids'] =
        (node) => accountTaxIds = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getCollectionOfObjectValues<InvoiceSettingCustomField>(
            InvoiceSettingCustomField.createFromDiscriminatorValue);
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['issuer'] = (node) => issuer =
        node.getObjectValue<ConnectAccountReference>(
            ConnectAccountReference.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentPagesCheckoutSessionInvoiceSettingsMetadata>(
            PaymentPagesCheckoutSessionInvoiceSettingsMetadata
                .createFromDiscriminatorValue);
    deserializerMap['rendering_options'] = (node) => renderingOptions =
        node.getObjectValue<InvoiceSettingCheckoutRenderingOptions>(
            InvoiceSettingCheckoutRenderingOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfPrimitiveValues<String?>(
        'account_tax_ids', accountTaxIds);
    writer.writeCollectionOfObjectValues<InvoiceSettingCustomField>(
        'custom_fields', customFields);
    writer.writeStringValue('description', description);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<ConnectAccountReference>('issuer', issuer);
    writer.writeObjectValue<PaymentPagesCheckoutSessionInvoiceSettingsMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<InvoiceSettingCheckoutRenderingOptions>(
        'rendering_options', renderingOptions);
    writer.writeAdditionalData(additionalData);
  }
}
