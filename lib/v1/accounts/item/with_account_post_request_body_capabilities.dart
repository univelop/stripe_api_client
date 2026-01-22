// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_capabilities_acss_debit_payments.dart';
import './with_account_post_request_body_capabilities_affirm_payments.dart';
import './with_account_post_request_body_capabilities_afterpay_clearpay_payments.dart';
import './with_account_post_request_body_capabilities_alma_payments.dart';
import './with_account_post_request_body_capabilities_amazon_pay_payments.dart';
import './with_account_post_request_body_capabilities_au_becs_debit_payments.dart';
import './with_account_post_request_body_capabilities_bacs_debit_payments.dart';
import './with_account_post_request_body_capabilities_bancontact_payments.dart';
import './with_account_post_request_body_capabilities_bank_transfer_payments.dart';
import './with_account_post_request_body_capabilities_billie_payments.dart';
import './with_account_post_request_body_capabilities_blik_payments.dart';
import './with_account_post_request_body_capabilities_boleto_payments.dart';
import './with_account_post_request_body_capabilities_card_issuing.dart';
import './with_account_post_request_body_capabilities_card_payments.dart';
import './with_account_post_request_body_capabilities_cartes_bancaires_payments.dart';
import './with_account_post_request_body_capabilities_cashapp_payments.dart';
import './with_account_post_request_body_capabilities_crypto_payments.dart';
import './with_account_post_request_body_capabilities_eps_payments.dart';
import './with_account_post_request_body_capabilities_fpx_payments.dart';
import './with_account_post_request_body_capabilities_gb_bank_transfer_payments.dart';
import './with_account_post_request_body_capabilities_giropay_payments.dart';
import './with_account_post_request_body_capabilities_grabpay_payments.dart';
import './with_account_post_request_body_capabilities_ideal_payments.dart';
import './with_account_post_request_body_capabilities_india_international_payments.dart';
import './with_account_post_request_body_capabilities_jcb_payments.dart';
import './with_account_post_request_body_capabilities_jp_bank_transfer_payments.dart';
import './with_account_post_request_body_capabilities_kakao_pay_payments.dart';
import './with_account_post_request_body_capabilities_klarna_payments.dart';
import './with_account_post_request_body_capabilities_konbini_payments.dart';
import './with_account_post_request_body_capabilities_kr_card_payments.dart';
import './with_account_post_request_body_capabilities_legacy_payments.dart';
import './with_account_post_request_body_capabilities_link_payments.dart';
import './with_account_post_request_body_capabilities_mb_way_payments.dart';
import './with_account_post_request_body_capabilities_mobilepay_payments.dart';
import './with_account_post_request_body_capabilities_multibanco_payments.dart';
import './with_account_post_request_body_capabilities_mx_bank_transfer_payments.dart';
import './with_account_post_request_body_capabilities_naver_pay_payments.dart';
import './with_account_post_request_body_capabilities_nz_bank_account_becs_debit_payments.dart';
import './with_account_post_request_body_capabilities_oxxo_payments.dart';
import './with_account_post_request_body_capabilities_p24_payments.dart';
import './with_account_post_request_body_capabilities_pay_by_bank_payments.dart';
import './with_account_post_request_body_capabilities_payco_payments.dart';
import './with_account_post_request_body_capabilities_paynow_payments.dart';
import './with_account_post_request_body_capabilities_payto_payments.dart';
import './with_account_post_request_body_capabilities_pix_payments.dart';
import './with_account_post_request_body_capabilities_promptpay_payments.dart';
import './with_account_post_request_body_capabilities_revolut_pay_payments.dart';
import './with_account_post_request_body_capabilities_samsung_pay_payments.dart';
import './with_account_post_request_body_capabilities_satispay_payments.dart';
import './with_account_post_request_body_capabilities_sepa_bank_transfer_payments.dart';
import './with_account_post_request_body_capabilities_sepa_debit_payments.dart';
import './with_account_post_request_body_capabilities_sofort_payments.dart';
import './with_account_post_request_body_capabilities_swish_payments.dart';
import './with_account_post_request_body_capabilities_tax_reporting_us1099_k.dart';
import './with_account_post_request_body_capabilities_tax_reporting_us1099_misc.dart';
import './with_account_post_request_body_capabilities_transfers.dart';
import './with_account_post_request_body_capabilities_treasury.dart';
import './with_account_post_request_body_capabilities_twint_payments.dart';
import './with_account_post_request_body_capabilities_us_bank_account_ach_payments.dart';
import './with_account_post_request_body_capabilities_us_bank_transfer_payments.dart';
import './with_account_post_request_body_capabilities_zip_payments.dart';

/// auto generated
/// Each key of the dictionary represents a capability, and each capabilitymaps to its settings (for example, whether it has been requested or not). Eachcapability is inactive until you have provided its specificrequirements and Stripe has verified them. An account might have someof its requested capabilities be active and some be inactive.Required when [account.controller.stripe_dashboard.type](/api/accounts/create#create_account-controller-dashboard-type)is `none`, which includes Custom accounts.
class WithAccountPostRequestBodyCapabilities
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit_payments property
  WithAccountPostRequestBodyCapabilitiesAcssDebitPayments? acssDebitPayments;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm_payments property
  WithAccountPostRequestBodyCapabilitiesAffirmPayments? affirmPayments;

  ///  The afterpay_clearpay_payments property
  WithAccountPostRequestBodyCapabilitiesAfterpayClearpayPayments?
      afterpayClearpayPayments;

  ///  The alma_payments property
  WithAccountPostRequestBodyCapabilitiesAlmaPayments? almaPayments;

  ///  The amazon_pay_payments property
  WithAccountPostRequestBodyCapabilitiesAmazonPayPayments? amazonPayPayments;

  ///  The au_becs_debit_payments property
  WithAccountPostRequestBodyCapabilitiesAuBecsDebitPayments?
      auBecsDebitPayments;

  ///  The bacs_debit_payments property
  WithAccountPostRequestBodyCapabilitiesBacsDebitPayments? bacsDebitPayments;

  ///  The bancontact_payments property
  WithAccountPostRequestBodyCapabilitiesBancontactPayments? bancontactPayments;

  ///  The bank_transfer_payments property
  WithAccountPostRequestBodyCapabilitiesBankTransferPayments?
      bankTransferPayments;

  ///  The billie_payments property
  WithAccountPostRequestBodyCapabilitiesBilliePayments? billiePayments;

  ///  The blik_payments property
  WithAccountPostRequestBodyCapabilitiesBlikPayments? blikPayments;

  ///  The boleto_payments property
  WithAccountPostRequestBodyCapabilitiesBoletoPayments? boletoPayments;

  ///  The card_issuing property
  WithAccountPostRequestBodyCapabilitiesCardIssuing? cardIssuing;

  ///  The card_payments property
  WithAccountPostRequestBodyCapabilitiesCardPayments? cardPayments;

  ///  The cartes_bancaires_payments property
  WithAccountPostRequestBodyCapabilitiesCartesBancairesPayments?
      cartesBancairesPayments;

  ///  The cashapp_payments property
  WithAccountPostRequestBodyCapabilitiesCashappPayments? cashappPayments;

  ///  The crypto_payments property
  WithAccountPostRequestBodyCapabilitiesCryptoPayments? cryptoPayments;

  ///  The eps_payments property
  WithAccountPostRequestBodyCapabilitiesEpsPayments? epsPayments;

  ///  The fpx_payments property
  WithAccountPostRequestBodyCapabilitiesFpxPayments? fpxPayments;

  ///  The gb_bank_transfer_payments property
  WithAccountPostRequestBodyCapabilitiesGbBankTransferPayments?
      gbBankTransferPayments;

  ///  The giropay_payments property
  WithAccountPostRequestBodyCapabilitiesGiropayPayments? giropayPayments;

  ///  The grabpay_payments property
  WithAccountPostRequestBodyCapabilitiesGrabpayPayments? grabpayPayments;

  ///  The ideal_payments property
  WithAccountPostRequestBodyCapabilitiesIdealPayments? idealPayments;

  ///  The india_international_payments property
  WithAccountPostRequestBodyCapabilitiesIndiaInternationalPayments?
      indiaInternationalPayments;

  ///  The jcb_payments property
  WithAccountPostRequestBodyCapabilitiesJcbPayments? jcbPayments;

  ///  The jp_bank_transfer_payments property
  WithAccountPostRequestBodyCapabilitiesJpBankTransferPayments?
      jpBankTransferPayments;

  ///  The kakao_pay_payments property
  WithAccountPostRequestBodyCapabilitiesKakaoPayPayments? kakaoPayPayments;

  ///  The klarna_payments property
  WithAccountPostRequestBodyCapabilitiesKlarnaPayments? klarnaPayments;

  ///  The konbini_payments property
  WithAccountPostRequestBodyCapabilitiesKonbiniPayments? konbiniPayments;

  ///  The kr_card_payments property
  WithAccountPostRequestBodyCapabilitiesKrCardPayments? krCardPayments;

  ///  The legacy_payments property
  WithAccountPostRequestBodyCapabilitiesLegacyPayments? legacyPayments;

  ///  The link_payments property
  WithAccountPostRequestBodyCapabilitiesLinkPayments? linkPayments;

  ///  The mb_way_payments property
  WithAccountPostRequestBodyCapabilitiesMbWayPayments? mbWayPayments;

  ///  The mobilepay_payments property
  WithAccountPostRequestBodyCapabilitiesMobilepayPayments? mobilepayPayments;

  ///  The multibanco_payments property
  WithAccountPostRequestBodyCapabilitiesMultibancoPayments? multibancoPayments;

  ///  The mx_bank_transfer_payments property
  WithAccountPostRequestBodyCapabilitiesMxBankTransferPayments?
      mxBankTransferPayments;

  ///  The naver_pay_payments property
  WithAccountPostRequestBodyCapabilitiesNaverPayPayments? naverPayPayments;

  ///  The nz_bank_account_becs_debit_payments property
  WithAccountPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments?
      nzBankAccountBecsDebitPayments;

  ///  The oxxo_payments property
  WithAccountPostRequestBodyCapabilitiesOxxoPayments? oxxoPayments;

  ///  The p24_payments property
  WithAccountPostRequestBodyCapabilitiesP24Payments? p24Payments;

  ///  The pay_by_bank_payments property
  WithAccountPostRequestBodyCapabilitiesPayByBankPayments? payByBankPayments;

  ///  The payco_payments property
  WithAccountPostRequestBodyCapabilitiesPaycoPayments? paycoPayments;

  ///  The paynow_payments property
  WithAccountPostRequestBodyCapabilitiesPaynowPayments? paynowPayments;

  ///  The payto_payments property
  WithAccountPostRequestBodyCapabilitiesPaytoPayments? paytoPayments;

  ///  The pix_payments property
  WithAccountPostRequestBodyCapabilitiesPixPayments? pixPayments;

  ///  The promptpay_payments property
  WithAccountPostRequestBodyCapabilitiesPromptpayPayments? promptpayPayments;

  ///  The revolut_pay_payments property
  WithAccountPostRequestBodyCapabilitiesRevolutPayPayments? revolutPayPayments;

  ///  The samsung_pay_payments property
  WithAccountPostRequestBodyCapabilitiesSamsungPayPayments? samsungPayPayments;

  ///  The satispay_payments property
  WithAccountPostRequestBodyCapabilitiesSatispayPayments? satispayPayments;

  ///  The sepa_bank_transfer_payments property
  WithAccountPostRequestBodyCapabilitiesSepaBankTransferPayments?
      sepaBankTransferPayments;

  ///  The sepa_debit_payments property
  WithAccountPostRequestBodyCapabilitiesSepaDebitPayments? sepaDebitPayments;

  ///  The sofort_payments property
  WithAccountPostRequestBodyCapabilitiesSofortPayments? sofortPayments;

  ///  The swish_payments property
  WithAccountPostRequestBodyCapabilitiesSwishPayments? swishPayments;

  ///  The tax_reporting_us_1099_k property
  WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099K?
      taxReportingUs1099K;

  ///  The tax_reporting_us_1099_misc property
  WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099Misc?
      taxReportingUs1099Misc;

  ///  The transfers property
  WithAccountPostRequestBodyCapabilitiesTransfers? transfers;

  ///  The treasury property
  WithAccountPostRequestBodyCapabilitiesTreasury? treasury;

  ///  The twint_payments property
  WithAccountPostRequestBodyCapabilitiesTwintPayments? twintPayments;

  ///  The us_bank_account_ach_payments property
  WithAccountPostRequestBodyCapabilitiesUsBankAccountAchPayments?
      usBankAccountAchPayments;

  ///  The us_bank_transfer_payments property
  WithAccountPostRequestBodyCapabilitiesUsBankTransferPayments?
      usBankTransferPayments;

  ///  The zip_payments property
  WithAccountPostRequestBodyCapabilitiesZipPayments? zipPayments;

  /// Instantiates a new [WithAccountPostRequestBodyCapabilities] and sets the default values.
  WithAccountPostRequestBodyCapabilities() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyCapabilities createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBodyCapabilities();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit_payments'] = (node) => acssDebitPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesAcssDebitPayments>(
            WithAccountPostRequestBodyCapabilitiesAcssDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['affirm_payments'] = (node) => affirmPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesAffirmPayments>(
            WithAccountPostRequestBodyCapabilitiesAffirmPayments
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay_payments'] = (node) =>
        afterpayClearpayPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesAfterpayClearpayPayments>(
            WithAccountPostRequestBodyCapabilitiesAfterpayClearpayPayments
                .createFromDiscriminatorValue);
    deserializerMap['alma_payments'] = (node) => almaPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesAlmaPayments>(
            WithAccountPostRequestBodyCapabilitiesAlmaPayments
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay_payments'] = (node) => amazonPayPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesAmazonPayPayments>(
            WithAccountPostRequestBodyCapabilitiesAmazonPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit_payments'] = (node) => auBecsDebitPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesAuBecsDebitPayments>(
            WithAccountPostRequestBodyCapabilitiesAuBecsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit_payments'] = (node) => bacsDebitPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesBacsDebitPayments>(
            WithAccountPostRequestBodyCapabilitiesBacsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['bancontact_payments'] = (node) => bancontactPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesBancontactPayments>(
            WithAccountPostRequestBodyCapabilitiesBancontactPayments
                .createFromDiscriminatorValue);
    deserializerMap['bank_transfer_payments'] = (node) => bankTransferPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesBankTransferPayments>(
            WithAccountPostRequestBodyCapabilitiesBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['billie_payments'] = (node) => billiePayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesBilliePayments>(
            WithAccountPostRequestBodyCapabilitiesBilliePayments
                .createFromDiscriminatorValue);
    deserializerMap['blik_payments'] = (node) => blikPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesBlikPayments>(
            WithAccountPostRequestBodyCapabilitiesBlikPayments
                .createFromDiscriminatorValue);
    deserializerMap['boleto_payments'] = (node) => boletoPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesBoletoPayments>(
            WithAccountPostRequestBodyCapabilitiesBoletoPayments
                .createFromDiscriminatorValue);
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesCardIssuing>(
            WithAccountPostRequestBodyCapabilitiesCardIssuing
                .createFromDiscriminatorValue);
    deserializerMap['card_payments'] = (node) => cardPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesCardPayments>(
            WithAccountPostRequestBodyCapabilitiesCardPayments
                .createFromDiscriminatorValue);
    deserializerMap['cartes_bancaires_payments'] = (node) =>
        cartesBancairesPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesCartesBancairesPayments>(
            WithAccountPostRequestBodyCapabilitiesCartesBancairesPayments
                .createFromDiscriminatorValue);
    deserializerMap['cashapp_payments'] = (node) => cashappPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesCashappPayments>(
            WithAccountPostRequestBodyCapabilitiesCashappPayments
                .createFromDiscriminatorValue);
    deserializerMap['crypto_payments'] = (node) => cryptoPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesCryptoPayments>(
            WithAccountPostRequestBodyCapabilitiesCryptoPayments
                .createFromDiscriminatorValue);
    deserializerMap['eps_payments'] = (node) => epsPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesEpsPayments>(
            WithAccountPostRequestBodyCapabilitiesEpsPayments
                .createFromDiscriminatorValue);
    deserializerMap['fpx_payments'] = (node) => fpxPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesFpxPayments>(
            WithAccountPostRequestBodyCapabilitiesFpxPayments
                .createFromDiscriminatorValue);
    deserializerMap['gb_bank_transfer_payments'] = (node) =>
        gbBankTransferPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesGbBankTransferPayments>(
            WithAccountPostRequestBodyCapabilitiesGbBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['giropay_payments'] = (node) => giropayPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesGiropayPayments>(
            WithAccountPostRequestBodyCapabilitiesGiropayPayments
                .createFromDiscriminatorValue);
    deserializerMap['grabpay_payments'] = (node) => grabpayPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesGrabpayPayments>(
            WithAccountPostRequestBodyCapabilitiesGrabpayPayments
                .createFromDiscriminatorValue);
    deserializerMap['ideal_payments'] = (node) => idealPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesIdealPayments>(
            WithAccountPostRequestBodyCapabilitiesIdealPayments
                .createFromDiscriminatorValue);
    deserializerMap['india_international_payments'] = (node) =>
        indiaInternationalPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesIndiaInternationalPayments>(
            WithAccountPostRequestBodyCapabilitiesIndiaInternationalPayments
                .createFromDiscriminatorValue);
    deserializerMap['jcb_payments'] = (node) => jcbPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesJcbPayments>(
            WithAccountPostRequestBodyCapabilitiesJcbPayments
                .createFromDiscriminatorValue);
    deserializerMap['jp_bank_transfer_payments'] = (node) =>
        jpBankTransferPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesJpBankTransferPayments>(
            WithAccountPostRequestBodyCapabilitiesJpBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay_payments'] = (node) => kakaoPayPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesKakaoPayPayments>(
            WithAccountPostRequestBodyCapabilitiesKakaoPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['klarna_payments'] = (node) => klarnaPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesKlarnaPayments>(
            WithAccountPostRequestBodyCapabilitiesKlarnaPayments
                .createFromDiscriminatorValue);
    deserializerMap['konbini_payments'] = (node) => konbiniPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesKonbiniPayments>(
            WithAccountPostRequestBodyCapabilitiesKonbiniPayments
                .createFromDiscriminatorValue);
    deserializerMap['kr_card_payments'] = (node) => krCardPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesKrCardPayments>(
            WithAccountPostRequestBodyCapabilitiesKrCardPayments
                .createFromDiscriminatorValue);
    deserializerMap['legacy_payments'] = (node) => legacyPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesLegacyPayments>(
            WithAccountPostRequestBodyCapabilitiesLegacyPayments
                .createFromDiscriminatorValue);
    deserializerMap['link_payments'] = (node) => linkPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesLinkPayments>(
            WithAccountPostRequestBodyCapabilitiesLinkPayments
                .createFromDiscriminatorValue);
    deserializerMap['mb_way_payments'] = (node) => mbWayPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesMbWayPayments>(
            WithAccountPostRequestBodyCapabilitiesMbWayPayments
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay_payments'] = (node) => mobilepayPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesMobilepayPayments>(
            WithAccountPostRequestBodyCapabilitiesMobilepayPayments
                .createFromDiscriminatorValue);
    deserializerMap['multibanco_payments'] = (node) => multibancoPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesMultibancoPayments>(
            WithAccountPostRequestBodyCapabilitiesMultibancoPayments
                .createFromDiscriminatorValue);
    deserializerMap['mx_bank_transfer_payments'] = (node) =>
        mxBankTransferPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesMxBankTransferPayments>(
            WithAccountPostRequestBodyCapabilitiesMxBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay_payments'] = (node) => naverPayPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesNaverPayPayments>(
            WithAccountPostRequestBodyCapabilitiesNaverPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account_becs_debit_payments'] = (node) =>
        nzBankAccountBecsDebitPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments>(
            WithAccountPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['oxxo_payments'] = (node) => oxxoPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesOxxoPayments>(
            WithAccountPostRequestBodyCapabilitiesOxxoPayments
                .createFromDiscriminatorValue);
    deserializerMap['p24_payments'] = (node) => p24Payments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesP24Payments>(
            WithAccountPostRequestBodyCapabilitiesP24Payments
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank_payments'] = (node) => payByBankPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesPayByBankPayments>(
            WithAccountPostRequestBodyCapabilitiesPayByBankPayments
                .createFromDiscriminatorValue);
    deserializerMap['payco_payments'] = (node) => paycoPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesPaycoPayments>(
            WithAccountPostRequestBodyCapabilitiesPaycoPayments
                .createFromDiscriminatorValue);
    deserializerMap['paynow_payments'] = (node) => paynowPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesPaynowPayments>(
            WithAccountPostRequestBodyCapabilitiesPaynowPayments
                .createFromDiscriminatorValue);
    deserializerMap['payto_payments'] = (node) => paytoPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesPaytoPayments>(
            WithAccountPostRequestBodyCapabilitiesPaytoPayments
                .createFromDiscriminatorValue);
    deserializerMap['pix_payments'] = (node) => pixPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesPixPayments>(
            WithAccountPostRequestBodyCapabilitiesPixPayments
                .createFromDiscriminatorValue);
    deserializerMap['promptpay_payments'] = (node) => promptpayPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesPromptpayPayments>(
            WithAccountPostRequestBodyCapabilitiesPromptpayPayments
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay_payments'] = (node) => revolutPayPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesRevolutPayPayments>(
            WithAccountPostRequestBodyCapabilitiesRevolutPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay_payments'] = (node) => samsungPayPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesSamsungPayPayments>(
            WithAccountPostRequestBodyCapabilitiesSamsungPayPayments
                .createFromDiscriminatorValue);
    deserializerMap['satispay_payments'] = (node) => satispayPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesSatispayPayments>(
            WithAccountPostRequestBodyCapabilitiesSatispayPayments
                .createFromDiscriminatorValue);
    deserializerMap['sepa_bank_transfer_payments'] = (node) =>
        sepaBankTransferPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesSepaBankTransferPayments>(
            WithAccountPostRequestBodyCapabilitiesSepaBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit_payments'] = (node) => sepaDebitPayments =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesSepaDebitPayments>(
            WithAccountPostRequestBodyCapabilitiesSepaDebitPayments
                .createFromDiscriminatorValue);
    deserializerMap['sofort_payments'] = (node) => sofortPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesSofortPayments>(
            WithAccountPostRequestBodyCapabilitiesSofortPayments
                .createFromDiscriminatorValue);
    deserializerMap['swish_payments'] = (node) => swishPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesSwishPayments>(
            WithAccountPostRequestBodyCapabilitiesSwishPayments
                .createFromDiscriminatorValue);
    deserializerMap['tax_reporting_us_1099_k'] = (node) => taxReportingUs1099K =
        node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099K>(
            WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099K
                .createFromDiscriminatorValue);
    deserializerMap['tax_reporting_us_1099_misc'] = (node) =>
        taxReportingUs1099Misc = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099Misc>(
            WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099Misc
                .createFromDiscriminatorValue);
    deserializerMap['transfers'] = (node) => transfers =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesTransfers>(
            WithAccountPostRequestBodyCapabilitiesTransfers
                .createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesTreasury>(
            WithAccountPostRequestBodyCapabilitiesTreasury
                .createFromDiscriminatorValue);
    deserializerMap['twint_payments'] = (node) => twintPayments = node
        .getObjectValue<WithAccountPostRequestBodyCapabilitiesTwintPayments>(
            WithAccountPostRequestBodyCapabilitiesTwintPayments
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account_ach_payments'] = (node) =>
        usBankAccountAchPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesUsBankAccountAchPayments>(
            WithAccountPostRequestBodyCapabilitiesUsBankAccountAchPayments
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_transfer_payments'] = (node) =>
        usBankTransferPayments = node.getObjectValue<
                WithAccountPostRequestBodyCapabilitiesUsBankTransferPayments>(
            WithAccountPostRequestBodyCapabilitiesUsBankTransferPayments
                .createFromDiscriminatorValue);
    deserializerMap['zip_payments'] = (node) => zipPayments =
        node.getObjectValue<WithAccountPostRequestBodyCapabilitiesZipPayments>(
            WithAccountPostRequestBodyCapabilitiesZipPayments
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesAcssDebitPayments>(
        'acss_debit_payments', acssDebitPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesAffirmPayments>(
            'affirm_payments', affirmPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesAfterpayClearpayPayments>(
        'afterpay_clearpay_payments', afterpayClearpayPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesAlmaPayments>(
        'alma_payments', almaPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesAmazonPayPayments>(
        'amazon_pay_payments', amazonPayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesAuBecsDebitPayments>(
        'au_becs_debit_payments', auBecsDebitPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesBacsDebitPayments>(
        'bacs_debit_payments', bacsDebitPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesBancontactPayments>(
        'bancontact_payments', bancontactPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesBankTransferPayments>(
        'bank_transfer_payments', bankTransferPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesBilliePayments>(
            'billie_payments', billiePayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesBlikPayments>(
        'blik_payments', blikPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesBoletoPayments>(
            'boleto_payments', boletoPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesCardIssuing>(
        'card_issuing', cardIssuing);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesCardPayments>(
        'card_payments', cardPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesCartesBancairesPayments>(
        'cartes_bancaires_payments', cartesBancairesPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesCashappPayments>(
        'cashapp_payments', cashappPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesCryptoPayments>(
            'crypto_payments', cryptoPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesEpsPayments>(
        'eps_payments', epsPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesFpxPayments>(
        'fpx_payments', fpxPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesGbBankTransferPayments>(
        'gb_bank_transfer_payments', gbBankTransferPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesGiropayPayments>(
        'giropay_payments', giropayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesGrabpayPayments>(
        'grabpay_payments', grabpayPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesIdealPayments>(
            'ideal_payments', idealPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesIndiaInternationalPayments>(
        'india_international_payments', indiaInternationalPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesJcbPayments>(
        'jcb_payments', jcbPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesJpBankTransferPayments>(
        'jp_bank_transfer_payments', jpBankTransferPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesKakaoPayPayments>(
        'kakao_pay_payments', kakaoPayPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesKlarnaPayments>(
            'klarna_payments', klarnaPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesKonbiniPayments>(
        'konbini_payments', konbiniPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesKrCardPayments>(
            'kr_card_payments', krCardPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesLegacyPayments>(
            'legacy_payments', legacyPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesLinkPayments>(
        'link_payments', linkPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesMbWayPayments>(
            'mb_way_payments', mbWayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesMobilepayPayments>(
        'mobilepay_payments', mobilepayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesMultibancoPayments>(
        'multibanco_payments', multibancoPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesMxBankTransferPayments>(
        'mx_bank_transfer_payments', mxBankTransferPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesNaverPayPayments>(
        'naver_pay_payments', naverPayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesNzBankAccountBecsDebitPayments>(
        'nz_bank_account_becs_debit_payments', nzBankAccountBecsDebitPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesOxxoPayments>(
        'oxxo_payments', oxxoPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesP24Payments>(
        'p24_payments', p24Payments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesPayByBankPayments>(
        'pay_by_bank_payments', payByBankPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesPaycoPayments>(
            'payco_payments', paycoPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesPaynowPayments>(
            'paynow_payments', paynowPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesPaytoPayments>(
            'payto_payments', paytoPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesPixPayments>(
        'pix_payments', pixPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesPromptpayPayments>(
        'promptpay_payments', promptpayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesRevolutPayPayments>(
        'revolut_pay_payments', revolutPayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesSamsungPayPayments>(
        'samsung_pay_payments', samsungPayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesSatispayPayments>(
        'satispay_payments', satispayPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesSepaBankTransferPayments>(
        'sepa_bank_transfer_payments', sepaBankTransferPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesSepaDebitPayments>(
        'sepa_debit_payments', sepaDebitPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesSofortPayments>(
            'sofort_payments', sofortPayments);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesSwishPayments>(
            'swish_payments', swishPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099K>(
        'tax_reporting_us_1099_k', taxReportingUs1099K);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesTaxReportingUs1099Misc>(
        'tax_reporting_us_1099_misc', taxReportingUs1099Misc);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesTransfers>(
        'transfers', transfers);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesTreasury>(
        'treasury', treasury);
    writer
        .writeObjectValue<WithAccountPostRequestBodyCapabilitiesTwintPayments>(
            'twint_payments', twintPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesUsBankAccountAchPayments>(
        'us_bank_account_ach_payments', usBankAccountAchPayments);
    writer.writeObjectValue<
            WithAccountPostRequestBodyCapabilitiesUsBankTransferPayments>(
        'us_bank_transfer_payments', usBankTransferPayments);
    writer.writeObjectValue<WithAccountPostRequestBodyCapabilitiesZipPayments>(
        'zip_payments', zipPayments);
    writer.writeAdditionalData(additionalData);
  }
}
