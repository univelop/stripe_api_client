// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_acss_debit.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_bancontact.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_card.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_customer_balance.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_payto.dart';
import './with_invoice_post_request_body_payment_settings_payment_method_options_us_bank_account.dart';

/// auto generated
class WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit?
      acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bancontact property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact?
      bancontact;

  ///  The card property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCard? card;

  ///  The customer_balance property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance?
      customerBalance;

  ///  The konbini property
  String? konbini;

  ///  The payto property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsPayto? payto;

  ///  The sepa_debit property
  String? sepaDebit;

  ///  The us_bank_account property
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions] and sets the default values.
  WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact
            .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCard
            .createFromDiscriminatorValue);
    deserializerMap[
        'customer_balance'] = (node) => customerBalance = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
            .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getStringValue();
    deserializerMap['payto'] = (node) => payto = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
            .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getStringValue();
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeStringValue('konbini', konbini);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeStringValue('sepa_debit', sepaDebit);
    writer.writeObjectValue<
            WithInvoicePostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
