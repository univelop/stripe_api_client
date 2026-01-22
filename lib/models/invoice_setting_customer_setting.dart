// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoice_setting_custom_field.dart';
import './invoice_setting_customer_rendering_options.dart';
import './invoice_setting_customer_setting_default_payment_method.dart';

/// auto generated
class InvoiceSettingCustomerSetting implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Default custom fields to be displayed on invoices for this customer.
  Iterable<InvoiceSettingCustomField>? customFields;

  ///  ID of a payment method that's attached to the customer, to be used as the customer's default payment method for subscriptions and invoices.
  InvoiceSettingCustomerSettingDefaultPaymentMethod? defaultPaymentMethod;

  ///  Default footer to be displayed on invoices for this customer.
  String? footer;

  ///  Default options for invoice PDF rendering for this customer.
  InvoiceSettingCustomerRenderingOptions? renderingOptions;

  /// Instantiates a new [InvoiceSettingCustomerSetting] and sets the default values.
  InvoiceSettingCustomerSetting() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoiceSettingCustomerSetting createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoiceSettingCustomerSetting();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['custom_fields'] = (node) => customFields =
        node.getCollectionOfObjectValues<InvoiceSettingCustomField>(
            InvoiceSettingCustomField.createFromDiscriminatorValue);
    deserializerMap['default_payment_method'] = (node) => defaultPaymentMethod =
        node.getObjectValue<InvoiceSettingCustomerSettingDefaultPaymentMethod>(
            InvoiceSettingCustomerSettingDefaultPaymentMethod
                .createFromDiscriminatorValue);
    deserializerMap['footer'] = (node) => footer = node.getStringValue();
    deserializerMap['rendering_options'] = (node) => renderingOptions =
        node.getObjectValue<InvoiceSettingCustomerRenderingOptions>(
            InvoiceSettingCustomerRenderingOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfObjectValues<InvoiceSettingCustomField>(
        'custom_fields', customFields);
    writer.writeObjectValue<InvoiceSettingCustomerSettingDefaultPaymentMethod>(
        'default_payment_method', defaultPaymentMethod);
    writer.writeStringValue('footer', footer);
    writer.writeObjectValue<InvoiceSettingCustomerRenderingOptions>(
        'rendering_options', renderingOptions);
    writer.writeAdditionalData(additionalData);
  }
}
