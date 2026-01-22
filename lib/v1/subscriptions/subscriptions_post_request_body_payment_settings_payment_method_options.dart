// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_acss_debit.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_bancontact.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_card.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_customer_balance.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_payto.dart';
import './subscriptions_post_request_body_payment_settings_payment_method_options_us_bank_account.dart';

/// auto generated
class SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit?
      acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bancontact property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact?
      bancontact;

  ///  The card property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCard? card;

  ///  The customer_balance property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance?
      customerBalance;

  ///  The konbini property
  String? konbini;

  ///  The payto property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto? payto;

  ///  The sepa_debit property
  String? sepaDebit;

  ///  The us_bank_account property
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount?
      usBankAccount;

  /// Instantiates a new [SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptions] and sets the default values.
  SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptions()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact
            .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCard
            .createFromDiscriminatorValue);
    deserializerMap[
        'customer_balance'] = (node) => customerBalance = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance
            .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getStringValue();
    deserializerMap['payto'] = (node) => payto = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto
            .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getStringValue();
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeStringValue('konbini', konbini);
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeStringValue('sepa_debit', sepaDebit);
    writer.writeObjectValue<
            SubscriptionsPostRequestBodyPaymentSettingsPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
