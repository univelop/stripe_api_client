// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_settings_bacs_debit_payments.dart';
import './accounts_post_request_body_settings_branding.dart';
import './accounts_post_request_body_settings_card_issuing.dart';
import './accounts_post_request_body_settings_card_payments.dart';
import './accounts_post_request_body_settings_invoices.dart';
import './accounts_post_request_body_settings_payments.dart';
import './accounts_post_request_body_settings_payouts.dart';
import './accounts_post_request_body_settings_treasury.dart';

/// auto generated
/// Options for customizing how the account functions within Stripe.
class AccountsPostRequestBodySettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bacs_debit_payments property
  AccountsPostRequestBodySettingsBacsDebitPayments? bacsDebitPayments;

  ///  The branding property
  AccountsPostRequestBodySettingsBranding? branding;

  ///  The card_issuing property
  AccountsPostRequestBodySettingsCardIssuing? cardIssuing;

  ///  The card_payments property
  AccountsPostRequestBodySettingsCardPayments? cardPayments;

  ///  The invoices property
  AccountsPostRequestBodySettingsInvoices? invoices;

  ///  The payments property
  AccountsPostRequestBodySettingsPayments? payments;

  ///  The payouts property
  AccountsPostRequestBodySettingsPayouts? payouts;

  ///  The treasury property
  AccountsPostRequestBodySettingsTreasury? treasury;

  /// Instantiates a new [AccountsPostRequestBodySettings] and sets the default values.
  AccountsPostRequestBodySettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodySettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodySettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bacs_debit_payments'] = (node) => bacsDebitPayments =
        node.getObjectValue<AccountsPostRequestBodySettingsBacsDebitPayments>(
            AccountsPostRequestBodySettingsBacsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['branding'] = (node) => branding = node.getObjectValue<
            AccountsPostRequestBodySettingsBranding>(
        AccountsPostRequestBodySettingsBranding.createFromDiscriminatorValue);
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<AccountsPostRequestBodySettingsCardIssuing>(
            AccountsPostRequestBodySettingsCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['card_payments'] = (node) => cardPayments =
        node.getObjectValue<AccountsPostRequestBodySettingsCardPayments>(
            AccountsPostRequestBodySettingsCardPayments
                .createFromDiscriminatorValue);
    deserializerMap['invoices'] = (node) => invoices = node.getObjectValue<
            AccountsPostRequestBodySettingsInvoices>(
        AccountsPostRequestBodySettingsInvoices.createFromDiscriminatorValue);
    deserializerMap['payments'] = (node) => payments = node.getObjectValue<
            AccountsPostRequestBodySettingsPayments>(
        AccountsPostRequestBodySettingsPayments.createFromDiscriminatorValue);
    deserializerMap['payouts'] = (node) => payouts = node.getObjectValue<
            AccountsPostRequestBodySettingsPayouts>(
        AccountsPostRequestBodySettingsPayouts.createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury = node.getObjectValue<
            AccountsPostRequestBodySettingsTreasury>(
        AccountsPostRequestBodySettingsTreasury.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountsPostRequestBodySettingsBacsDebitPayments>(
        'bacs_debit_payments', bacsDebitPayments);
    writer.writeObjectValue<AccountsPostRequestBodySettingsBranding>(
        'branding', branding);
    writer.writeObjectValue<AccountsPostRequestBodySettingsCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<AccountsPostRequestBodySettingsCardPayments>(
        'card_payments', cardPayments);
    writer.writeObjectValue<AccountsPostRequestBodySettingsInvoices>(
        'invoices', invoices);
    writer.writeObjectValue<AccountsPostRequestBodySettingsPayments>(
        'payments', payments);
    writer.writeObjectValue<AccountsPostRequestBodySettingsPayouts>(
        'payouts', payouts);
    writer.writeObjectValue<AccountsPostRequestBodySettingsTreasury>(
        'treasury', treasury);
    writer.writeAdditionalData(additionalData);
  }
}
