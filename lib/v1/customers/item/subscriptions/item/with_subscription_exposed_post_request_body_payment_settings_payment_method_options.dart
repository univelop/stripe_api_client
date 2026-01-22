// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_acss_debit.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_bancontact.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_card.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_customer_balance.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_payto.dart';
import './with_subscription_exposed_post_request_body_payment_settings_payment_method_options_us_bank_account.dart';

/// auto generated
class WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit?
      acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bancontact property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact?
      bancontact;

  ///  The card property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard?
      card;

  ///  The customer_balance property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance?
      customerBalance;

  ///  The konbini property
  String? konbini;

  ///  The payto property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto?
      payto;

  ///  The sepa_debit property
  String? sepaDebit;

  ///  The us_bank_account property
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions] and sets the default values.
  WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact
            .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
            .createFromDiscriminatorValue);
    deserializerMap[
        'customer_balance'] = (node) => customerBalance = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
            .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getStringValue();
    deserializerMap['payto'] = (node) => payto = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
            .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getStringValue();
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeStringValue('konbini', konbini);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeStringValue('sepa_debit', sepaDebit);
    writer.writeObjectValue<
            WithSubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
