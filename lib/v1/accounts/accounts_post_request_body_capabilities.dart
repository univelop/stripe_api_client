// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_capabilities_acss_debit_payments.dart';
import './accounts_post_request_body_capabilities_affirm_payments.dart';
import './accounts_post_request_body_capabilities_afterpay_clearpay_payments.dart';
import './accounts_post_request_body_capabilities_alma_payments.dart';
import './accounts_post_request_body_capabilities_amazon_pay_payments.dart';
import './accounts_post_request_body_capabilities_au_becs_debit_payments.dart';
import './accounts_post_request_body_capabilities_bacs_debit_payments.dart';
import './accounts_post_request_body_capabilities_bancontact_payments.dart';
import './accounts_post_request_body_capabilities_bank_transfer_payments.dart';
import './accounts_post_request_body_capabilities_billie_payments.dart';
import './accounts_post_request_body_capabilities_blik_payments.dart';
import './accounts_post_request_body_capabilities_boleto_payments.dart';
import './accounts_post_request_body_capabilities_card_issuing.dart';
import './accounts_post_request_body_capabilities_card_payments.dart';
import './accounts_post_request_body_capabilities_cartes_bancaires_payments.dart';
import './accounts_post_request_body_capabilities_cashapp_payments.dart';
import './accounts_post_request_body_capabilities_crypto_payments.dart';
import './accounts_post_request_body_capabilities_eps_payments.dart';
import './accounts_post_request_body_capabilities_fpx_payments.dart';
import './accounts_post_request_body_capabilities_gb_bank_transfer_payments.dart';
import './accounts_post_request_body_capabilities_giropay_payments.dart';
import './accounts_post_request_body_capabilities_grabpay_payments.dart';
import './accounts_post_request_body_capabilities_ideal_payments.dart';
import './accounts_post_request_body_capabilities_india_international_payments.dart';
import './accounts_post_request_body_capabilities_jcb_payments.dart';
import './accounts_post_request_body_capabilities_jp_bank_transfer_payments.dart';
import './accounts_post_request_body_capabilities_kakao_pay_payments.dart';
import './accounts_post_request_body_capabilities_klarna_payments.dart';
import './accounts_post_request_body_capabilities_konbini_payments.dart';
import './accounts_post_request_body_capabilities_kr_card_payments.dart';
import './accounts_post_request_body_capabilities_legacy_payments.dart';
import './accounts_post_request_body_capabilities_link_payments.dart';
import './accounts_post_request_body_capabilities_mb_way_payments.dart';
import './accounts_post_request_body_capabilities_mobilepay_payments.dart';
import './accounts_post_request_body_capabilities_multibanco_payments.dart';
import './accounts_post_request_body_capabilities_mx_bank_transfer_payments.dart';
import './accounts_post_request_body_capabilities_naver_pay_payments.dart';
import './accounts_post_request_body_capabilities_nz_bank_account_becs_debit_payments.dart';
import './accounts_post_request_body_capabilities_oxxo_payments.dart';
import './accounts_post_request_body_capabilities_p24_payments.dart';
import './accounts_post_request_body_capabilities_pay_by_bank_payments.dart';
import './accounts_post_request_body_capabilities_payco_payments.dart';
import './accounts_post_request_body_capabilities_paynow_payments.dart';
import './accounts_post_request_body_capabilities_payto_payments.dart';
import './accounts_post_request_body_capabilities_pix_payments.dart';
import './accounts_post_request_body_capabilities_promptpay_payments.dart';
import './accounts_post_request_body_capabilities_revolut_pay_payments.dart';
import './accounts_post_request_body_capabilities_samsung_pay_payments.dart';
import './accounts_post_request_body_capabilities_satispay_payments.dart';
import './accounts_post_request_body_capabilities_sepa_bank_transfer_payments.dart';
import './accounts_post_request_body_capabilities_sepa_debit_payments.dart';
import './accounts_post_request_body_capabilities_sofort_payments.dart';
import './accounts_post_request_body_capabilities_swish_payments.dart';
import './accounts_post_request_body_capabilities_tax_reporting_us1099_k.dart';
import './accounts_post_request_body_capabilities_tax_reporting_us1099_misc.dart';
import './accounts_post_request_body_capabilities_transfers.dart';
import './accounts_post_request_body_capabilities_treasury.dart';
import './accounts_post_request_body_capabilities_twint_payments.dart';
import './accounts_post_request_body_capabilities_us_bank_account_ach_payments.dart';
import './accounts_post_request_body_capabilities_us_bank_transfer_payments.dart';
import './accounts_post_request_body_capabilities_zip_payments.dart';

/// auto generated
/// Each key of the dictionary represents a capability, and each capabilitymaps to its settings (for example, whether it has been requested or not). Eachcapability is inactive until you have provided its specificrequirements and Stripe has verified them. An account might have someof its requested capabilities be active and some be inactive.Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)is `none`, which includes Custom accounts.
class AccountsPostRequestBodyCapabilities
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit_payments property
  AccountsPostRequestBodyCapabilitiesAcssDebitPayments? acssDebitPayments;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm_payments property
  AccountsPostRequestBodyCapabilitiesAffirmPayments? affirmPayments;

  ///  The afterpay_clearpay_payments property
  AccountsPostRequestBodyCapabilitiesAfterpayClearpayPayments?
      afterpayClearpayPayments;

  ///  The alma_payments property
  AccountsPostRequestBodyCapabilitiesAlmaPayments? almaPayments;

  ///  The amazon_pay_payments property
  AccountsPostRequestBodyCapabilitiesAmazonPayPayments? amazonPayPayments;

  ///  The au_becs_debit_payments property
  AccountsPostRequestBodyCapabilitiesAuBecsDebitPayments? auBecsDebitPayments;

  ///  The bacs_debit_payments property
  AccountsPostRequestBodyCapabilitiesBacsDebitPayments? bacsDebitPayments;

  ///  The bancontact_payments property
  AccountsPostRequestBodyCapabilitiesBancontactPayments? bancontactPayments;

  ///  The bank_transfer_payments property
  AccountsPostRequestBodyCapabilitiesBankTransferPayments? bankTransferPayments;

  ///  The billie_payments property
  AccountsPostRequestBodyCapabilitiesBilliePayments? billiePayments;

  ///  The blik_payments property
  AccountsPostRequestBodyCapabilitiesBlikPayments? blikPayments;

  ///  The boleto_payments property
  AccountsPostRequestBodyCapabilitiesBoletoPayments? boletoPayments;

  ///  The card_issuing property
  AccountsPostRequestBodyCapabilitiesCardIssuing? cardIssuing;

  ///  The card_payments property
  AccountsPostRequestBodyCapabilitiesCardPayments? cardPayments;

  ///  The cartes_bancaires_payments property
  AccountsPostRequestBodyCapabilitiesCartesBancairesPayments?
      cartesBancairesPayments;

  ///  The cashapp_payments property
  AccountsPostRequestBodyCapabilitiesCashappPayments? cashappPayments;

  ///  The crypto_payments property
  AccountsPostRequestBodyCapabilitiesCryptoPayments? cryptoPayments;

  ///  The eps_payments property
  AccountsPostRequestBodyCapabilitiesEpsPayments? epsPayments;

  ///  The fpx_payments property
  AccountsPostRequestBodyCapabilitiesFpxPayments? fpxPayments;

  ///  The gb_bank_transfer_payments property
  AccountsPostRequestBodyCapabilitiesGbBankTransferPayments?
      gbBankTransferPayments;

  ///  The giropay_payments property
  AccountsPostRequestBodyCapabilitiesGiropayPayments? giropayPayments;

  ///  The grabpay_payments property
  AccountsPostRequestBodyCapabilitiesGrabpayPayments? grabpayPayments;

  ///  The ideal_payments property
  AccountsPostRequestBodyCapabilitiesIdealPayments? idealPayments;

  ///  The india_international_payments property
  AccountsPostRequestBodyCapabilitiesIndiaInternationalPayments?
      indiaInternationalPayments;

  ///  The jcb_payments property
  AccountsPostRequestBodyCapabilitiesJcbPayments? jcbPayments;

  ///  The jp_bank_transfer_payments property
  AccountsPostRequestBodyCapabilitiesJpBankTransferPayments?
      jpBankTransferPayments;

  ///  The kakao_pay_payments property
  AccountsPostRequestBodyCapabilitiesKakaoPayPayments? kakaoPayPayments;

  ///  The klarna_payments property
  AccountsPostRequestBodyCapabilitiesKlarnaPayments? klarnaPayments;

  ///  The konbini_payments property
  AccountsPostRequestBodyCapabilitiesKonbiniPayments? konbiniPayments;

  ///  The kr_card_payments property
  AccountsPostRequestBodyCapabilitiesKrCardPayments? krCardPayments;

  ///  The legacy_payments property
  AccountsPostRequestBodyCapabilitiesLegacyPayments? legacyPayments;

  ///  The link_payments property
  AccountsPostRequestBodyCapabilitiesLinkPayments? linkPayments;

  ///  The mb_way_payments property
  AccountsPostRequestBodyCapabilitiesMbWayPayments? mbWayPayments;

  ///  The mobilepay_payments property
  AccountsPostRequestBodyCapabilitiesMobilepayPayments? mobilepayPayments;

  ///  The multibanco_payments property
  AccountsPostRequestBodyCapabilitiesMultibancoPayments? multibancoPayments;

  ///  The mx_bank_transfer_payments property
  AccountsPostRequestBodyCapabilitiesMxBankTransferPayments?
      mxBankTransferPayments;

  ///  The naver_pay_payments property
  AccountsPostRequestBodyCapabilitiesNaverPayPayments? naverPayPayments;

  ///  The nz_bank_account_becs_debit_payments property
  AccountsPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments?
      nzBankAccountBecsDebitPayments;

  ///  The oxxo_payments property
  AccountsPostRequestBodyCapabilitiesOxxoPayments? oxxoPayments;

  ///  The p24_payments property
  AccountsPostRequestBodyCapabilitiesP24Payments? p24Payments;

  ///  The pay_by_bank_payments property
  AccountsPostRequestBodyCapabilitiesPayByBankPayments? payByBankPayments;

  ///  The payco_payments property
  AccountsPostRequestBodyCapabilitiesPaycoPayments? paycoPayments;

  ///  The paynow_payments property
  AccountsPostRequestBodyCapabilitiesPaynowPayments? paynowPayments;

  ///  The payto_payments property
  AccountsPostRequestBodyCapabilitiesPaytoPayments? paytoPayments;

  ///  The pix_payments property
  AccountsPostRequestBodyCapabilitiesPixPayments? pixPayments;

  ///  The promptpay_payments property
  AccountsPostRequestBodyCapabilitiesPromptpayPayments? promptpayPayments;

  ///  The revolut_pay_payments property
  AccountsPostRequestBodyCapabilitiesRevolutPayPayments? revolutPayPayments;

  ///  The samsung_pay_payments property
  AccountsPostRequestBodyCapabilitiesSamsungPayPayments? samsungPayPayments;

  ///  The satispay_payments property
  AccountsPostRequestBodyCapabilitiesSatispayPayments? satispayPayments;

  ///  The sepa_bank_transfer_payments property
  AccountsPostRequestBodyCapabilitiesSepaBankTransferPayments?
      sepaBankTransferPayments;

  ///  The sepa_debit_payments property
  AccountsPostRequestBodyCapabilitiesSepaDebitPayments? sepaDebitPayments;

  ///  The sofort_payments property
  AccountsPostRequestBodyCapabilitiesSofortPayments? sofortPayments;

  ///  The swish_payments property
  AccountsPostRequestBodyCapabilitiesSwishPayments? swishPayments;

  ///  The tax_reporting_us_1099_k property
  AccountsPostRequestBodyCapabilitiesTaxReportingUs1099K? taxReportingUs1099K;

  ///  The tax_reporting_us_1099_misc property
  AccountsPostRequestBodyCapabilitiesTaxReportingUs1099Misc?
      taxReportingUs1099Misc;

  ///  The transfers property
  AccountsPostRequestBodyCapabilitiesTransfers? transfers;

  ///  The treasury property
  AccountsPostRequestBodyCapabilitiesTreasury? treasury;

  ///  The twint_payments property
  AccountsPostRequestBodyCapabilitiesTwintPayments? twintPayments;

  ///  The us_bank_account_ach_payments property
  AccountsPostRequestBodyCapabilitiesUsBankAccountAchPayments?
      usBankAccountAchPayments;

  ///  The us_bank_transfer_payments property
  AccountsPostRequestBodyCapabilitiesUsBankTransferPayments?
      usBankTransferPayments;

  ///  The zip_payments property
  AccountsPostRequestBodyCapabilitiesZipPayments? zipPayments;

  /// Instantiates a new [AccountsPostRequestBodyCapabilities] and sets the default values.
  AccountsPostRequestBodyCapabilities() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyCapabilities createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyCapabilities();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit_payments'] = (node) => acssDebitPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesAcssDebitPayments>(
            AccountsPostRequestBodyCapabilitiesAcssDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['affirm_payments'] = (node) => affirmPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesAffirmPayments>(
            AccountsPostRequestBodyCapabilitiesAffirmPayments
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay_payments'] = (node) =>
        afterpayClearpayPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesAfterpayClearpayPayments>(
            AccountsPostRequestBodyCapabilitiesAfterpayClearpayPayments
                .createFromDiscriminatorValue);
    deserializerMap['alma_payments'] = (node) => almaPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesAlmaPayments>(
            AccountsPostRequestBodyCapabilitiesAlmaPayments
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay_payments'] = (node) => amazonPayPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesAmazonPayPayments>(
            AccountsPostRequestBodyCapabilitiesAmazonPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit_payments'] = (node) => auBecsDebitPayments =
        node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesAuBecsDebitPayments>(
            AccountsPostRequestBodyCapabilitiesAuBecsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit_payments'] = (node) => bacsDebitPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesBacsDebitPayments>(
            AccountsPostRequestBodyCapabilitiesBacsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['bancontact_payments'] = (node) => bancontactPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesBancontactPayments>(
            AccountsPostRequestBodyCapabilitiesBancontactPayments
                .createFromDiscriminatorValue);
    deserializerMap['bank_transfer_payments'] = (node) => bankTransferPayments =
        node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesBankTransferPayments>(
            AccountsPostRequestBodyCapabilitiesBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['billie_payments'] = (node) => billiePayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesBilliePayments>(
            AccountsPostRequestBodyCapabilitiesBilliePayments
                .createFromDiscriminatorValue);
    deserializerMap['blik_payments'] = (node) => blikPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesBlikPayments>(
            AccountsPostRequestBodyCapabilitiesBlikPayments
                .createFromDiscriminatorValue);
    deserializerMap['boleto_payments'] = (node) => boletoPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesBoletoPayments>(
            AccountsPostRequestBodyCapabilitiesBoletoPayments
                .createFromDiscriminatorValue);
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesCardIssuing>(
            AccountsPostRequestBodyCapabilitiesCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['card_payments'] = (node) => cardPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesCardPayments>(
            AccountsPostRequestBodyCapabilitiesCardPayments
                .createFromDiscriminatorValue);
    deserializerMap['cartes_bancaires_payments'] = (node) =>
        cartesBancairesPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesCartesBancairesPayments>(
            AccountsPostRequestBodyCapabilitiesCartesBancairesPayments
                .createFromDiscriminatorValue);
    deserializerMap['cashapp_payments'] = (node) => cashappPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesCashappPayments>(
            AccountsPostRequestBodyCapabilitiesCashappPayments
                .createFromDiscriminatorValue);
    deserializerMap['crypto_payments'] = (node) => cryptoPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesCryptoPayments>(
            AccountsPostRequestBodyCapabilitiesCryptoPayments
                .createFromDiscriminatorValue);
    deserializerMap['eps_payments'] = (node) => epsPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesEpsPayments>(
            AccountsPostRequestBodyCapabilitiesEpsPayments
                .createFromDiscriminatorValue);
    deserializerMap['fpx_payments'] = (node) => fpxPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesFpxPayments>(
            AccountsPostRequestBodyCapabilitiesFpxPayments
                .createFromDiscriminatorValue);
    deserializerMap['gb_bank_transfer_payments'] = (node) =>
        gbBankTransferPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesGbBankTransferPayments>(
            AccountsPostRequestBodyCapabilitiesGbBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['giropay_payments'] = (node) => giropayPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesGiropayPayments>(
            AccountsPostRequestBodyCapabilitiesGiropayPayments
                .createFromDiscriminatorValue);
    deserializerMap['grabpay_payments'] = (node) => grabpayPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesGrabpayPayments>(
            AccountsPostRequestBodyCapabilitiesGrabpayPayments
                .createFromDiscriminatorValue);
    deserializerMap['ideal_payments'] = (node) => idealPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesIdealPayments>(
            AccountsPostRequestBodyCapabilitiesIdealPayments
                .createFromDiscriminatorValue);
    deserializerMap['india_international_payments'] = (node) =>
        indiaInternationalPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesIndiaInternationalPayments>(
            AccountsPostRequestBodyCapabilitiesIndiaInternationalPayments
                .createFromDiscriminatorValue);
    deserializerMap['jcb_payments'] = (node) => jcbPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesJcbPayments>(
            AccountsPostRequestBodyCapabilitiesJcbPayments
                .createFromDiscriminatorValue);
    deserializerMap['jp_bank_transfer_payments'] = (node) =>
        jpBankTransferPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesJpBankTransferPayments>(
            AccountsPostRequestBodyCapabilitiesJpBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay_payments'] = (node) => kakaoPayPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesKakaoPayPayments>(
            AccountsPostRequestBodyCapabilitiesKakaoPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['klarna_payments'] = (node) => klarnaPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesKlarnaPayments>(
            AccountsPostRequestBodyCapabilitiesKlarnaPayments
                .createFromDiscriminatorValue);
    deserializerMap['konbini_payments'] = (node) => konbiniPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesKonbiniPayments>(
            AccountsPostRequestBodyCapabilitiesKonbiniPayments
                .createFromDiscriminatorValue);
    deserializerMap['kr_card_payments'] = (node) => krCardPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesKrCardPayments>(
            AccountsPostRequestBodyCapabilitiesKrCardPayments
                .createFromDiscriminatorValue);
    deserializerMap['legacy_payments'] = (node) => legacyPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesLegacyPayments>(
            AccountsPostRequestBodyCapabilitiesLegacyPayments
                .createFromDiscriminatorValue);
    deserializerMap['link_payments'] = (node) => linkPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesLinkPayments>(
            AccountsPostRequestBodyCapabilitiesLinkPayments
                .createFromDiscriminatorValue);
    deserializerMap['mb_way_payments'] = (node) => mbWayPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesMbWayPayments>(
            AccountsPostRequestBodyCapabilitiesMbWayPayments
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay_payments'] = (node) => mobilepayPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesMobilepayPayments>(
            AccountsPostRequestBodyCapabilitiesMobilepayPayments
                .createFromDiscriminatorValue);
    deserializerMap['multibanco_payments'] = (node) => multibancoPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesMultibancoPayments>(
            AccountsPostRequestBodyCapabilitiesMultibancoPayments
                .createFromDiscriminatorValue);
    deserializerMap['mx_bank_transfer_payments'] = (node) =>
        mxBankTransferPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesMxBankTransferPayments>(
            AccountsPostRequestBodyCapabilitiesMxBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay_payments'] = (node) => naverPayPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesNaverPayPayments>(
            AccountsPostRequestBodyCapabilitiesNaverPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account_becs_debit_payments'] = (node) =>
        nzBankAccountBecsDebitPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments>(
            AccountsPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['oxxo_payments'] = (node) => oxxoPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesOxxoPayments>(
            AccountsPostRequestBodyCapabilitiesOxxoPayments
                .createFromDiscriminatorValue);
    deserializerMap['p24_payments'] = (node) => p24Payments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesP24Payments>(
            AccountsPostRequestBodyCapabilitiesP24Payments
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank_payments'] = (node) => payByBankPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesPayByBankPayments>(
            AccountsPostRequestBodyCapabilitiesPayByBankPayments
                .createFromDiscriminatorValue);
    deserializerMap['payco_payments'] = (node) => paycoPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesPaycoPayments>(
            AccountsPostRequestBodyCapabilitiesPaycoPayments
                .createFromDiscriminatorValue);
    deserializerMap['paynow_payments'] = (node) => paynowPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesPaynowPayments>(
            AccountsPostRequestBodyCapabilitiesPaynowPayments
                .createFromDiscriminatorValue);
    deserializerMap['payto_payments'] = (node) => paytoPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesPaytoPayments>(
            AccountsPostRequestBodyCapabilitiesPaytoPayments
                .createFromDiscriminatorValue);
    deserializerMap['pix_payments'] = (node) => pixPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesPixPayments>(
            AccountsPostRequestBodyCapabilitiesPixPayments
                .createFromDiscriminatorValue);
    deserializerMap['promptpay_payments'] = (node) => promptpayPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesPromptpayPayments>(
            AccountsPostRequestBodyCapabilitiesPromptpayPayments
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay_payments'] = (node) => revolutPayPayments =
        node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesRevolutPayPayments>(
            AccountsPostRequestBodyCapabilitiesRevolutPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay_payments'] = (node) => samsungPayPayments =
        node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesSamsungPayPayments>(
            AccountsPostRequestBodyCapabilitiesSamsungPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['satispay_payments'] = (node) => satispayPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesSatispayPayments>(
            AccountsPostRequestBodyCapabilitiesSatispayPayments
                .createFromDiscriminatorValue);
    deserializerMap['sepa_bank_transfer_payments'] = (node) =>
        sepaBankTransferPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesSepaBankTransferPayments>(
            AccountsPostRequestBodyCapabilitiesSepaBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit_payments'] = (node) => sepaDebitPayments = node
        .getObjectValue<AccountsPostRequestBodyCapabilitiesSepaDebitPayments>(
            AccountsPostRequestBodyCapabilitiesSepaDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['sofort_payments'] = (node) => sofortPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesSofortPayments>(
            AccountsPostRequestBodyCapabilitiesSofortPayments
                .createFromDiscriminatorValue);
    deserializerMap['swish_payments'] = (node) => swishPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesSwishPayments>(
            AccountsPostRequestBodyCapabilitiesSwishPayments
                .createFromDiscriminatorValue);
    deserializerMap['tax_reporting_us_1099_k'] = (node) => taxReportingUs1099K =
        node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesTaxReportingUs1099K>(
            AccountsPostRequestBodyCapabilitiesTaxReportingUs1099K
                .createFromDiscriminatorValue);
    deserializerMap['tax_reporting_us_1099_misc'] = (node) =>
        taxReportingUs1099Misc = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesTaxReportingUs1099Misc>(
            AccountsPostRequestBodyCapabilitiesTaxReportingUs1099Misc
                .createFromDiscriminatorValue);
    deserializerMap['transfers'] = (node) => transfers =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesTransfers>(
            AccountsPostRequestBodyCapabilitiesTransfers
                .createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesTreasury>(
            AccountsPostRequestBodyCapabilitiesTreasury
                .createFromDiscriminatorValue);
    deserializerMap['twint_payments'] = (node) => twintPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesTwintPayments>(
            AccountsPostRequestBodyCapabilitiesTwintPayments
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account_ach_payments'] = (node) =>
        usBankAccountAchPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesUsBankAccountAchPayments>(
            AccountsPostRequestBodyCapabilitiesUsBankAccountAchPayments
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_transfer_payments'] = (node) =>
        usBankTransferPayments = node.getObjectValue<
                AccountsPostRequestBodyCapabilitiesUsBankTransferPayments>(
            AccountsPostRequestBodyCapabilitiesUsBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['zip_payments'] = (node) => zipPayments =
        node.getObjectValue<AccountsPostRequestBodyCapabilitiesZipPayments>(
            AccountsPostRequestBodyCapabilitiesZipPayments
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesAcssDebitPayments>(
            'acss_debit_payments', acssDebitPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesAffirmPayments>(
        'affirm_payments', affirmPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesAfterpayClearpayPayments>(
        'afterpay_clearpay_payments', afterpayClearpayPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesAlmaPayments>(
        'alma_payments', almaPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesAmazonPayPayments>(
            'amazon_pay_payments', amazonPayPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesAuBecsDebitPayments>(
        'au_becs_debit_payments', auBecsDebitPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesBacsDebitPayments>(
            'bacs_debit_payments', bacsDebitPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesBancontactPayments>(
        'bancontact_payments', bancontactPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesBankTransferPayments>(
        'bank_transfer_payments', bankTransferPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesBilliePayments>(
        'billie_payments', billiePayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesBlikPayments>(
        'blik_payments', blikPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesBoletoPayments>(
        'boleto_payments', boletoPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesCardPayments>(
        'card_payments', cardPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesCartesBancairesPayments>(
        'cartes_bancaires_payments', cartesBancairesPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesCashappPayments>(
        'cashapp_payments', cashappPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesCryptoPayments>(
        'crypto_payments', cryptoPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesEpsPayments>(
        'eps_payments', epsPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesFpxPayments>(
        'fpx_payments', fpxPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesGbBankTransferPayments>(
        'gb_bank_transfer_payments', gbBankTransferPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesGiropayPayments>(
        'giropay_payments', giropayPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesGrabpayPayments>(
        'grabpay_payments', grabpayPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesIdealPayments>(
        'ideal_payments', idealPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesIndiaInternationalPayments>(
        'india_international_payments', indiaInternationalPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesJcbPayments>(
        'jcb_payments', jcbPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesJpBankTransferPayments>(
        'jp_bank_transfer_payments', jpBankTransferPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesKakaoPayPayments>(
            'kakao_pay_payments', kakaoPayPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesKlarnaPayments>(
        'klarna_payments', klarnaPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesKonbiniPayments>(
        'konbini_payments', konbiniPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesKrCardPayments>(
        'kr_card_payments', krCardPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesLegacyPayments>(
        'legacy_payments', legacyPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesLinkPayments>(
        'link_payments', linkPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesMbWayPayments>(
        'mb_way_payments', mbWayPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesMobilepayPayments>(
            'mobilepay_payments', mobilepayPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesMultibancoPayments>(
        'multibanco_payments', multibancoPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesMxBankTransferPayments>(
        'mx_bank_transfer_payments', mxBankTransferPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesNaverPayPayments>(
            'naver_pay_payments', naverPayPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments>(
        'nz_bank_account_becs_debit_payments', nzBankAccountBecsDebitPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesOxxoPayments>(
        'oxxo_payments', oxxoPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesP24Payments>(
        'p24_payments', p24Payments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesPayByBankPayments>(
            'pay_by_bank_payments', payByBankPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesPaycoPayments>(
        'payco_payments', paycoPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesPaynowPayments>(
        'paynow_payments', paynowPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesPaytoPayments>(
        'payto_payments', paytoPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesPixPayments>(
        'pix_payments', pixPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesPromptpayPayments>(
            'promptpay_payments', promptpayPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesRevolutPayPayments>(
        'revolut_pay_payments', revolutPayPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesSamsungPayPayments>(
        'samsung_pay_payments', samsungPayPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesSatispayPayments>(
            'satispay_payments', satispayPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesSepaBankTransferPayments>(
        'sepa_bank_transfer_payments', sepaBankTransferPayments);
    writer
        .writeObjectValue<AccountsPostRequestBodyCapabilitiesSepaDebitPayments>(
            'sepa_debit_payments', sepaDebitPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesSofortPayments>(
        'sofort_payments', sofortPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesSwishPayments>(
        'swish_payments', swishPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesTaxReportingUs1099K>(
        'tax_reporting_us_1099_k', taxReportingUs1099K);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesTaxReportingUs1099Misc>(
        'tax_reporting_us_1099_misc', taxReportingUs1099Misc);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesTransfers>(
        'transfers', transfers);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesTreasury>(
        'treasury', treasury);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesTwintPayments>(
        'twint_payments', twintPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesUsBankAccountAchPayments>(
        'us_bank_account_ach_payments', usBankAccountAchPayments);
    writer.writeObjectValue<
            AccountsPostRequestBodyCapabilitiesUsBankTransferPayments>(
        'us_bank_transfer_payments', usBankTransferPayments);
    writer.writeObjectValue<AccountsPostRequestBodyCapabilitiesZipPayments>(
        'zip_payments', zipPayments);
    writer.writeAdditionalData(additionalData);
  }
}
