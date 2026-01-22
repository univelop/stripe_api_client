// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_default_mandate.dart';
import './invoices_post_request_body_payment_settings_payment_method_options.dart';
import './invoices_post_request_body_payment_settings_payment_method_types.dart';

/// auto generated
/// Configuration settings for the PaymentIntent that is generated when the invoice is finalized.
class InvoicesPostRequestBodyPaymentSettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The default_mandate property
  InvoicesPostRequestBodyPaymentSettingsDefaultMandate? defaultMandate;

  ///  The payment_method_options property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions?
      paymentMethodOptions;

  ///  The payment_method_types property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypes? paymentMethodTypes;

  /// Instantiates a new [InvoicesPostRequestBodyPaymentSettings] and sets the default values.
  InvoicesPostRequestBodyPaymentSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPostRequestBodyPaymentSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_mandate'] = (node) => defaultMandate = node
        .getObjectValue<InvoicesPostRequestBodyPaymentSettingsDefaultMandate>(
            InvoicesPostRequestBodyPaymentSettingsDefaultMandate
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<
                InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions>(
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getObjectValue<
                InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypes>(
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypes
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<InvoicesPostRequestBodyPaymentSettingsDefaultMandate>(
            'default_mandate', defaultMandate);
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodTypes>(
        'payment_method_types', paymentMethodTypes);
    writer.writeAdditionalData(additionalData);
  }
}
