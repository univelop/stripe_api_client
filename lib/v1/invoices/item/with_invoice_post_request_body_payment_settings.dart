// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_default_mandate.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_types.dart';

/// auto generated
/// Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
class WithInvoicePostRequestBodyPaymentSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The default_mandate property
  WithInvoicePostRequestBodyPaymentSettingsDefaultMandate? defaultMandate;

  ///  The payment_method_options property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions?
      paymentMethodOptions;

  ///  The payment_method_types property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodTypes?
      paymentMethodTypes;

  /// Instantiates a new [WithInvoicePostRequestBodyPaymentSettings] and sets the default values.
  WithInvoicePostRequestBodyPaymentSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithInvoicePostRequestBodyPaymentSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_mandate'] = (node) => defaultMandate =
        node.getObjectValue<
                WithInvoicePostRequestBodyPaymentSettingsDefaultMandate>(
            WithInvoicePostRequestBodyPaymentSettingsDefaultMandate
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<
                WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions>(
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getObjectValue<
                WithInvoicePostRequestBodyPaymentSettingsPaymentMethodTypes>(
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodTypes
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsDefaultMandate>(
        'default_mandate', defaultMandate);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes);
    writer.writeAdditionalData(additionalData);
  }
}
