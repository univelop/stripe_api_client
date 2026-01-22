// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_settings_bacs_debit_payments.dart';
import './with_account_post_request_body_settings_branding.dart';
import './with_account_post_request_body_settings_card_issuing.dart';
import './with_account_post_request_body_settings_card_payments.dart';
import './with_account_post_request_body_settings_invoices.dart';
import './with_account_post_request_body_settings_payments.dart';
import './with_account_post_request_body_settings_payouts.dart';
import './with_account_post_request_body_settings_treasury.dart';

/// auto generated
/// Options for customizing how the account functions within Stripe.
class WithAccountPostRequestBodySettings
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bacs_debit_payments property
  WithAccountPostRequestBodySettingsBacsDebitPayments? bacsDebitPayments;

  ///  The branding property
  WithAccountPostRequestBodySettingsBranding? branding;

  ///  The card_issuing property
  WithAccountPostRequestBodySettingsCardIssuing? cardIssuing;

  ///  The card_payments property
  WithAccountPostRequestBodySettingsCardPayments? cardPayments;

  ///  The invoices property
  WithAccountPostRequestBodySettingsInvoices? invoices;

  ///  The payments property
  WithAccountPostRequestBodySettingsPayments? payments;

  ///  The payouts property
  WithAccountPostRequestBodySettingsPayouts? payouts;

  ///  The treasury property
  WithAccountPostRequestBodySettingsTreasury? treasury;

  /// Instantiates a new [WithAccountPostRequestBodySettings] and sets the default values.
  WithAccountPostRequestBodySettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodySettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBodySettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bacs_debit_payments'] = (node) => bacsDebitPayments = node
        .getObjectValue<WithAccountPostRequestBodySettingsBacsDebitPayments>(
            WithAccountPostRequestBodySettingsBacsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['branding'] = (node) => branding =
        node.getObjectValue<WithAccountPostRequestBodySettingsBranding>(
            WithAccountPostRequestBodySettingsBranding
                .createFromDiscriminatorValue);
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<WithAccountPostRequestBodySettingsCardIssuing>(
            WithAccountPostRequestBodySettingsCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['card_payments'] = (node) => cardPayments =
        node.getObjectValue<WithAccountPostRequestBodySettingsCardPayments>(
            WithAccountPostRequestBodySettingsCardPayments
                .createFromDiscriminatorValue);
    deserializerMap['invoices'] = (node) => invoices =
        node.getObjectValue<WithAccountPostRequestBodySettingsInvoices>(
            WithAccountPostRequestBodySettingsInvoices
                .createFromDiscriminatorValue);
    deserializerMap['payments'] = (node) => payments =
        node.getObjectValue<WithAccountPostRequestBodySettingsPayments>(
            WithAccountPostRequestBodySettingsPayments
                .createFromDiscriminatorValue);
    deserializerMap['payouts'] = (node) => payouts = node.getObjectValue<
            WithAccountPostRequestBodySettingsPayouts>(
        WithAccountPostRequestBodySettingsPayouts.createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<WithAccountPostRequestBodySettingsTreasury>(
            WithAccountPostRequestBodySettingsTreasury
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithAccountPostRequestBodySettingsBacsDebitPayments>(
            'bacs_debit_payments', bacsDebitPayments);
    writer.writeObjectValue<WithAccountPostRequestBodySettingsBranding>(
        'branding', branding);
    writer.writeObjectValue<WithAccountPostRequestBodySettingsCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<WithAccountPostRequestBodySettingsCardPayments>(
        'card_payments', cardPayments);
    writer.writeObjectValue<WithAccountPostRequestBodySettingsInvoices>(
        'invoices', invoices);
    writer.writeObjectValue<WithAccountPostRequestBodySettingsPayments>(
        'payments', payments);
    writer.writeObjectValue<WithAccountPostRequestBodySettingsPayouts>(
        'payouts', payouts);
    writer.writeObjectValue<WithAccountPostRequestBodySettingsTreasury>(
        'treasury', treasury);
    writer.writeAdditionalData(additionalData);
  }
}
