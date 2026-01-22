// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_bacs_debit_payments_settings.dart';
import './account_branding_settings.dart';
import './account_card_issuing_settings.dart';
import './account_card_payments_settings.dart';
import './account_dashboard_settings.dart';
import './account_invoices_settings.dart';
import './account_payments_settings.dart';
import './account_payout_settings.dart';
import './account_sepa_debit_payments_settings.dart';
import './account_treasury_settings.dart';

/// auto generated
class AccountSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bacs_debit_payments property
  AccountBacsDebitPaymentsSettings? bacsDebitPayments;

  ///  The branding property
  AccountBrandingSettings? branding;

  ///  The card_issuing property
  AccountCardIssuingSettings? cardIssuing;

  ///  The card_payments property
  AccountCardPaymentsSettings? cardPayments;

  ///  The dashboard property
  AccountDashboardSettings? dashboard;

  ///  The invoices property
  AccountInvoicesSettings? invoices;

  ///  The payments property
  AccountPaymentsSettings? payments;

  ///  The payouts property
  AccountPayoutSettings? payouts;

  ///  The sepa_debit_payments property
  AccountSepaDebitPaymentsSettings? sepaDebitPayments;

  ///  The treasury property
  AccountTreasurySettings? treasury;

  /// Instantiates a new [AccountSettings] and sets the default values.
  AccountSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountSettings createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bacs_debit_payments'] = (node) => bacsDebitPayments =
        node.getObjectValue<AccountBacsDebitPaymentsSettings>(
            AccountBacsDebitPaymentsSettings.createFromDiscriminatorValue);
    deserializerMap['branding'] = (node) => branding =
        node.getObjectValue<AccountBrandingSettings>(
            AccountBrandingSettings.createFromDiscriminatorValue);
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<AccountCardIssuingSettings>(
            AccountCardIssuingSettings.createFromDiscriminatorValue);
    deserializerMap['card_payments'] = (node) => cardPayments =
        node.getObjectValue<AccountCardPaymentsSettings>(
            AccountCardPaymentsSettings.createFromDiscriminatorValue);
    deserializerMap['dashboard'] = (node) => dashboard =
        node.getObjectValue<AccountDashboardSettings>(
            AccountDashboardSettings.createFromDiscriminatorValue);
    deserializerMap['invoices'] = (node) => invoices =
        node.getObjectValue<AccountInvoicesSettings>(
            AccountInvoicesSettings.createFromDiscriminatorValue);
    deserializerMap['payments'] = (node) => payments =
        node.getObjectValue<AccountPaymentsSettings>(
            AccountPaymentsSettings.createFromDiscriminatorValue);
    deserializerMap['payouts'] = (node) => payouts =
        node.getObjectValue<AccountPayoutSettings>(
            AccountPayoutSettings.createFromDiscriminatorValue);
    deserializerMap['sepa_debit_payments'] = (node) => sepaDebitPayments =
        node.getObjectValue<AccountSepaDebitPaymentsSettings>(
            AccountSepaDebitPaymentsSettings.createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<AccountTreasurySettings>(
            AccountTreasurySettings.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<AccountBacsDebitPaymentsSettings>(
        'bacs_debit_payments', bacsDebitPayments);
    writer.writeObjectValue<AccountBrandingSettings>('branding', branding);
    writer.writeObjectValue<AccountCardIssuingSettings>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<AccountCardPaymentsSettings>(
        'card_payments', cardPayments);
    writer.writeObjectValue<AccountDashboardSettings>('dashboard', dashboard);
    writer.writeObjectValue<AccountInvoicesSettings>('invoices', invoices);
    writer.writeObjectValue<AccountPaymentsSettings>('payments', payments);
    writer.writeObjectValue<AccountPayoutSettings>('payouts', payouts);
    writer.writeObjectValue<AccountSepaDebitPaymentsSettings>(
        'sepa_debit_payments', sepaDebitPayments);
    writer.writeObjectValue<AccountTreasurySettings>('treasury', treasury);
    writer.writeAdditionalData(additionalData);
  }
}
