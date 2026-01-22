// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_acss_debit.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_bancontact.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_card.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_customer_balance.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_payto.dart';
import './subscription_exposed_post_request_body_payment_settings_payment_method_options_us_bank_account.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit?
      acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bancontact property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact?
      bancontact;

  ///  The card property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard?
      card;

  ///  The customer_balance property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance?
      customerBalance;

  ///  The konbini property
  String? konbini;

  ///  The payto property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto?
      payto;

  ///  The sepa_debit property
  String? sepaDebit;

  ///  The us_bank_account property
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions] and sets the default values.
  SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact
            .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
            .createFromDiscriminatorValue);
    deserializerMap[
        'customer_balance'] = (node) => customerBalance = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
            .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getStringValue();
    deserializerMap['payto'] = (node) => payto = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
            .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getStringValue();
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeStringValue('konbini', konbini);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeStringValue('sepa_debit', sepaDebit);
    writer.writeObjectValue<
            SubscriptionExposedPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
