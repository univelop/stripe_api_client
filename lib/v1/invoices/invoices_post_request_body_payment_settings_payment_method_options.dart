// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_acss_debit.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_bancontact.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_card.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_customer_balance.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_payto.dart';
import './invoices_post_request_body_payment_settings_payment_method_options_us_bank_account.dart';

/// auto generated
class InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit?
      acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bancontact property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact?
      bancontact;

  ///  The card property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCard? card;

  ///  The customer_balance property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance?
      customerBalance;

  ///  The konbini property
  String? konbini;

  ///  The payto property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto? payto;

  ///  The sepa_debit property
  String? sepaDebit;

  ///  The us_bank_account property
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions] and sets the default values.
  InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact
            .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
            .createFromDiscriminatorValue);
    deserializerMap[
        'customer_balance'] = (node) => customerBalance = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
            .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getStringValue();
    deserializerMap['payto'] = (node) => payto = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
            .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getStringValue();
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeStringValue('konbini', konbini);
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeStringValue('sepa_debit', sepaDebit);
    writer.writeObjectValue<
            InvoicesPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
