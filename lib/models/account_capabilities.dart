// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './account_capabilities_acss_debit_payments.dart';
import './account_capabilities_affirm_payments.dart';
import './account_capabilities_afterpay_clearpay_payments.dart';
import './account_capabilities_alma_payments.dart';
import './account_capabilities_amazon_pay_payments.dart';
import './account_capabilities_au_becs_debit_payments.dart';
import './account_capabilities_bacs_debit_payments.dart';
import './account_capabilities_bancontact_payments.dart';
import './account_capabilities_bank_transfer_payments.dart';
import './account_capabilities_billie_payments.dart';
import './account_capabilities_blik_payments.dart';
import './account_capabilities_boleto_payments.dart';
import './account_capabilities_card_issuing.dart';
import './account_capabilities_card_payments.dart';
import './account_capabilities_cartes_bancaires_payments.dart';
import './account_capabilities_cashapp_payments.dart';
import './account_capabilities_crypto_payments.dart';
import './account_capabilities_eps_payments.dart';
import './account_capabilities_fpx_payments.dart';
import './account_capabilities_gb_bank_transfer_payments.dart';
import './account_capabilities_giropay_payments.dart';
import './account_capabilities_grabpay_payments.dart';
import './account_capabilities_ideal_payments.dart';
import './account_capabilities_india_international_payments.dart';
import './account_capabilities_jcb_payments.dart';
import './account_capabilities_jp_bank_transfer_payments.dart';
import './account_capabilities_kakao_pay_payments.dart';
import './account_capabilities_klarna_payments.dart';
import './account_capabilities_konbini_payments.dart';
import './account_capabilities_kr_card_payments.dart';
import './account_capabilities_legacy_payments.dart';
import './account_capabilities_link_payments.dart';
import './account_capabilities_mb_way_payments.dart';
import './account_capabilities_mobilepay_payments.dart';
import './account_capabilities_multibanco_payments.dart';
import './account_capabilities_mx_bank_transfer_payments.dart';
import './account_capabilities_naver_pay_payments.dart';
import './account_capabilities_nz_bank_account_becs_debit_payments.dart';
import './account_capabilities_oxxo_payments.dart';
import './account_capabilities_p24_payments.dart';
import './account_capabilities_pay_by_bank_payments.dart';
import './account_capabilities_payco_payments.dart';
import './account_capabilities_paynow_payments.dart';
import './account_capabilities_payto_payments.dart';
import './account_capabilities_pix_payments.dart';
import './account_capabilities_promptpay_payments.dart';
import './account_capabilities_revolut_pay_payments.dart';
import './account_capabilities_samsung_pay_payments.dart';
import './account_capabilities_satispay_payments.dart';
import './account_capabilities_sepa_bank_transfer_payments.dart';
import './account_capabilities_sepa_debit_payments.dart';
import './account_capabilities_sofort_payments.dart';
import './account_capabilities_swish_payments.dart';
import './account_capabilities_tax_reporting_us1099_k.dart';
import './account_capabilities_tax_reporting_us1099_misc.dart';
import './account_capabilities_transfers.dart';
import './account_capabilities_treasury.dart';
import './account_capabilities_twint_payments.dart';
import './account_capabilities_us_bank_account_ach_payments.dart';
import './account_capabilities_us_bank_transfer_payments.dart';
import './account_capabilities_zip_payments.dart';

/// auto generated
class AccountCapabilities implements AdditionalDataHolder, Parsable {
  ///  The status of the Canadian pre-authorized debits payments capability of the account, or whether the account can directly process Canadian pre-authorized debits charges.
  AccountCapabilitiesAcssDebitPayments? acssDebitPayments;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The status of the Affirm capability of the account, or whether the account can directly process Affirm charges.
  AccountCapabilitiesAffirmPayments? affirmPayments;

  ///  The status of the Afterpay Clearpay capability of the account, or whether the account can directly process Afterpay Clearpay charges.
  AccountCapabilitiesAfterpayClearpayPayments? afterpayClearpayPayments;

  ///  The status of the Alma capability of the account, or whether the account can directly process Alma payments.
  AccountCapabilitiesAlmaPayments? almaPayments;

  ///  The status of the AmazonPay capability of the account, or whether the account can directly process AmazonPay payments.
  AccountCapabilitiesAmazonPayPayments? amazonPayPayments;

  ///  The status of the BECS Direct Debit (AU) payments capability of the account, or whether the account can directly process BECS Direct Debit (AU) charges.
  AccountCapabilitiesAuBecsDebitPayments? auBecsDebitPayments;

  ///  The status of the Bacs Direct Debits payments capability of the account, or whether the account can directly process Bacs Direct Debits charges.
  AccountCapabilitiesBacsDebitPayments? bacsDebitPayments;

  ///  The status of the Bancontact payments capability of the account, or whether the account can directly process Bancontact charges.
  AccountCapabilitiesBancontactPayments? bancontactPayments;

  ///  The status of the customer_balance payments capability of the account, or whether the account can directly process customer_balance charges.
  AccountCapabilitiesBankTransferPayments? bankTransferPayments;

  ///  The status of the Billie capability of the account, or whether the account can directly process Billie payments.
  AccountCapabilitiesBilliePayments? billiePayments;

  ///  The status of the blik payments capability of the account, or whether the account can directly process blik charges.
  AccountCapabilitiesBlikPayments? blikPayments;

  ///  The status of the boleto payments capability of the account, or whether the account can directly process boleto charges.
  AccountCapabilitiesBoletoPayments? boletoPayments;

  ///  The status of the card issuing capability of the account, or whether you can use Issuing to distribute funds on cards
  AccountCapabilitiesCardIssuing? cardIssuing;

  ///  The status of the card payments capability of the account, or whether the account can directly process credit and debit card charges.
  AccountCapabilitiesCardPayments? cardPayments;

  ///  The status of the Cartes Bancaires payments capability of the account, or whether the account can directly process Cartes Bancaires card charges in EUR currency.
  AccountCapabilitiesCartesBancairesPayments? cartesBancairesPayments;

  ///  The status of the Cash App Pay capability of the account, or whether the account can directly process Cash App Pay payments.
  AccountCapabilitiesCashappPayments? cashappPayments;

  ///  The status of the Crypto capability of the account, or whether the account can directly process Crypto payments.
  AccountCapabilitiesCryptoPayments? cryptoPayments;

  ///  The status of the EPS payments capability of the account, or whether the account can directly process EPS charges.
  AccountCapabilitiesEpsPayments? epsPayments;

  ///  The status of the FPX payments capability of the account, or whether the account can directly process FPX charges.
  AccountCapabilitiesFpxPayments? fpxPayments;

  ///  The status of the GB customer_balance payments (GBP currency) capability of the account, or whether the account can directly process GB customer_balance charges.
  AccountCapabilitiesGbBankTransferPayments? gbBankTransferPayments;

  ///  The status of the giropay payments capability of the account, or whether the account can directly process giropay charges.
  AccountCapabilitiesGiropayPayments? giropayPayments;

  ///  The status of the GrabPay payments capability of the account, or whether the account can directly process GrabPay charges.
  AccountCapabilitiesGrabpayPayments? grabpayPayments;

  ///  The status of the iDEAL payments capability of the account, or whether the account can directly process iDEAL charges.
  AccountCapabilitiesIdealPayments? idealPayments;

  ///  The status of the india_international_payments capability of the account, or whether the account can process international charges (non INR) in India.
  AccountCapabilitiesIndiaInternationalPayments? indiaInternationalPayments;

  ///  The status of the JCB payments capability of the account, or whether the account (Japan only) can directly process JCB credit card charges in JPY currency.
  AccountCapabilitiesJcbPayments? jcbPayments;

  ///  The status of the Japanese customer_balance payments (JPY currency) capability of the account, or whether the account can directly process Japanese customer_balance charges.
  AccountCapabilitiesJpBankTransferPayments? jpBankTransferPayments;

  ///  The status of the KakaoPay capability of the account, or whether the account can directly process KakaoPay payments.
  AccountCapabilitiesKakaoPayPayments? kakaoPayPayments;

  ///  The status of the Klarna payments capability of the account, or whether the account can directly process Klarna charges.
  AccountCapabilitiesKlarnaPayments? klarnaPayments;

  ///  The status of the konbini payments capability of the account, or whether the account can directly process konbini charges.
  AccountCapabilitiesKonbiniPayments? konbiniPayments;

  ///  The status of the KrCard capability of the account, or whether the account can directly process KrCard payments.
  AccountCapabilitiesKrCardPayments? krCardPayments;

  ///  The status of the legacy payments capability of the account.
  AccountCapabilitiesLegacyPayments? legacyPayments;

  ///  The status of the link_payments capability of the account, or whether the account can directly process Link charges.
  AccountCapabilitiesLinkPayments? linkPayments;

  ///  The status of the MB WAY payments capability of the account, or whether the account can directly process MB WAY charges.
  AccountCapabilitiesMbWayPayments? mbWayPayments;

  ///  The status of the MobilePay capability of the account, or whether the account can directly process MobilePay charges.
  AccountCapabilitiesMobilepayPayments? mobilepayPayments;

  ///  The status of the Multibanco payments capability of the account, or whether the account can directly process Multibanco charges.
  AccountCapabilitiesMultibancoPayments? multibancoPayments;

  ///  The status of the Mexican customer_balance payments (MXN currency) capability of the account, or whether the account can directly process Mexican customer_balance charges.
  AccountCapabilitiesMxBankTransferPayments? mxBankTransferPayments;

  ///  The status of the NaverPay capability of the account, or whether the account can directly process NaverPay payments.
  AccountCapabilitiesNaverPayPayments? naverPayPayments;

  ///  The status of the New Zealand BECS Direct Debit payments capability of the account, or whether the account can directly process New Zealand BECS Direct Debit charges.
  AccountCapabilitiesNzBankAccountBecsDebitPayments?
      nzBankAccountBecsDebitPayments;

  ///  The status of the OXXO payments capability of the account, or whether the account can directly process OXXO charges.
  AccountCapabilitiesOxxoPayments? oxxoPayments;

  ///  The status of the P24 payments capability of the account, or whether the account can directly process P24 charges.
  AccountCapabilitiesP24Payments? p24Payments;

  ///  The status of the pay_by_bank payments capability of the account, or whether the account can directly process pay_by_bank charges.
  AccountCapabilitiesPayByBankPayments? payByBankPayments;

  ///  The status of the Payco capability of the account, or whether the account can directly process Payco payments.
  AccountCapabilitiesPaycoPayments? paycoPayments;

  ///  The status of the paynow payments capability of the account, or whether the account can directly process paynow charges.
  AccountCapabilitiesPaynowPayments? paynowPayments;

  ///  The status of the PayTo capability of the account, or whether the account can directly process PayTo charges.
  AccountCapabilitiesPaytoPayments? paytoPayments;

  ///  The status of the pix payments capability of the account, or whether the account can directly process pix charges.
  AccountCapabilitiesPixPayments? pixPayments;

  ///  The status of the promptpay payments capability of the account, or whether the account can directly process promptpay charges.
  AccountCapabilitiesPromptpayPayments? promptpayPayments;

  ///  The status of the RevolutPay capability of the account, or whether the account can directly process RevolutPay payments.
  AccountCapabilitiesRevolutPayPayments? revolutPayPayments;

  ///  The status of the SamsungPay capability of the account, or whether the account can directly process SamsungPay payments.
  AccountCapabilitiesSamsungPayPayments? samsungPayPayments;

  ///  The status of the Satispay capability of the account, or whether the account can directly process Satispay payments.
  AccountCapabilitiesSatispayPayments? satispayPayments;

  ///  The status of the SEPA customer_balance payments (EUR currency) capability of the account, or whether the account can directly process SEPA customer_balance charges.
  AccountCapabilitiesSepaBankTransferPayments? sepaBankTransferPayments;

  ///  The status of the SEPA Direct Debits payments capability of the account, or whether the account can directly process SEPA Direct Debits charges.
  AccountCapabilitiesSepaDebitPayments? sepaDebitPayments;

  ///  The status of the Sofort payments capability of the account, or whether the account can directly process Sofort charges.
  AccountCapabilitiesSofortPayments? sofortPayments;

  ///  The status of the Swish capability of the account, or whether the account can directly process Swish payments.
  AccountCapabilitiesSwishPayments? swishPayments;

  ///  The status of the tax reporting 1099-K (US) capability of the account.
  AccountCapabilitiesTaxReportingUs1099K? taxReportingUs1099K;

  ///  The status of the tax reporting 1099-MISC (US) capability of the account.
  AccountCapabilitiesTaxReportingUs1099Misc? taxReportingUs1099Misc;

  ///  The status of the transfers capability of the account, or whether your platform can transfer funds to the account.
  AccountCapabilitiesTransfers? transfers;

  ///  The status of the banking capability, or whether the account can have bank accounts.
  AccountCapabilitiesTreasury? treasury;

  ///  The status of the TWINT capability of the account, or whether the account can directly process TWINT charges.
  AccountCapabilitiesTwintPayments? twintPayments;

  ///  The status of the US bank account ACH payments capability of the account, or whether the account can directly process US bank account charges.
  AccountCapabilitiesUsBankAccountAchPayments? usBankAccountAchPayments;

  ///  The status of the US customer_balance payments (USD currency) capability of the account, or whether the account can directly process US customer_balance charges.
  AccountCapabilitiesUsBankTransferPayments? usBankTransferPayments;

  ///  The status of the Zip capability of the account, or whether the account can directly process Zip charges.
  AccountCapabilitiesZipPayments? zipPayments;

  /// Instantiates a new [AccountCapabilities] and sets the default values.
  AccountCapabilities() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountCapabilities createFromDiscriminatorValue(ParseNode parseNode) {
    return AccountCapabilities();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit_payments'] = (node) => acssDebitPayments =
        node.getEnumValue<AccountCapabilitiesAcssDebitPayments>((stringValue) =>
            AccountCapabilitiesAcssDebitPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['affirm_payments'] = (node) => affirmPayments =
        node.getEnumValue<AccountCapabilitiesAffirmPayments>((stringValue) =>
            AccountCapabilitiesAffirmPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['afterpay_clearpay_payments'] = (node) =>
        afterpayClearpayPayments =
            node.getEnumValue<AccountCapabilitiesAfterpayClearpayPayments>(
                (stringValue) => AccountCapabilitiesAfterpayClearpayPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['alma_payments'] = (node) => almaPayments =
        node.getEnumValue<AccountCapabilitiesAlmaPayments>((stringValue) =>
            AccountCapabilitiesAlmaPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['amazon_pay_payments'] = (node) => amazonPayPayments =
        node.getEnumValue<AccountCapabilitiesAmazonPayPayments>((stringValue) =>
            AccountCapabilitiesAmazonPayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['au_becs_debit_payments'] = (node) => auBecsDebitPayments =
        node.getEnumValue<AccountCapabilitiesAuBecsDebitPayments>(
            (stringValue) => AccountCapabilitiesAuBecsDebitPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['bacs_debit_payments'] = (node) => bacsDebitPayments =
        node.getEnumValue<AccountCapabilitiesBacsDebitPayments>((stringValue) =>
            AccountCapabilitiesBacsDebitPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['bancontact_payments'] = (node) => bancontactPayments =
        node.getEnumValue<AccountCapabilitiesBancontactPayments>(
            (stringValue) => AccountCapabilitiesBancontactPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['bank_transfer_payments'] = (node) => bankTransferPayments =
        node.getEnumValue<AccountCapabilitiesBankTransferPayments>(
            (stringValue) => AccountCapabilitiesBankTransferPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['billie_payments'] = (node) => billiePayments =
        node.getEnumValue<AccountCapabilitiesBilliePayments>((stringValue) =>
            AccountCapabilitiesBilliePayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['blik_payments'] = (node) => blikPayments =
        node.getEnumValue<AccountCapabilitiesBlikPayments>((stringValue) =>
            AccountCapabilitiesBlikPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['boleto_payments'] = (node) => boletoPayments =
        node.getEnumValue<AccountCapabilitiesBoletoPayments>((stringValue) =>
            AccountCapabilitiesBoletoPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['card_issuing'] = (node) => cardIssuing =
        node.getEnumValue<AccountCapabilitiesCardIssuing>((stringValue) =>
            AccountCapabilitiesCardIssuing.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['card_payments'] = (node) => cardPayments =
        node.getEnumValue<AccountCapabilitiesCardPayments>((stringValue) =>
            AccountCapabilitiesCardPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['cartes_bancaires_payments'] = (node) =>
        cartesBancairesPayments =
            node.getEnumValue<AccountCapabilitiesCartesBancairesPayments>(
                (stringValue) => AccountCapabilitiesCartesBancairesPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['cashapp_payments'] = (node) => cashappPayments =
        node.getEnumValue<AccountCapabilitiesCashappPayments>((stringValue) =>
            AccountCapabilitiesCashappPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['crypto_payments'] = (node) => cryptoPayments =
        node.getEnumValue<AccountCapabilitiesCryptoPayments>((stringValue) =>
            AccountCapabilitiesCryptoPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['eps_payments'] = (node) => epsPayments =
        node.getEnumValue<AccountCapabilitiesEpsPayments>((stringValue) =>
            AccountCapabilitiesEpsPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['fpx_payments'] = (node) => fpxPayments =
        node.getEnumValue<AccountCapabilitiesFpxPayments>((stringValue) =>
            AccountCapabilitiesFpxPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['gb_bank_transfer_payments'] = (node) =>
        gbBankTransferPayments =
            node.getEnumValue<AccountCapabilitiesGbBankTransferPayments>(
                (stringValue) => AccountCapabilitiesGbBankTransferPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['giropay_payments'] = (node) => giropayPayments =
        node.getEnumValue<AccountCapabilitiesGiropayPayments>((stringValue) =>
            AccountCapabilitiesGiropayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['grabpay_payments'] = (node) => grabpayPayments =
        node.getEnumValue<AccountCapabilitiesGrabpayPayments>((stringValue) =>
            AccountCapabilitiesGrabpayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['ideal_payments'] = (node) => idealPayments =
        node.getEnumValue<AccountCapabilitiesIdealPayments>((stringValue) =>
            AccountCapabilitiesIdealPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['india_international_payments'] = (node) =>
        indiaInternationalPayments =
            node.getEnumValue<AccountCapabilitiesIndiaInternationalPayments>(
                (stringValue) => AccountCapabilitiesIndiaInternationalPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['jcb_payments'] = (node) => jcbPayments =
        node.getEnumValue<AccountCapabilitiesJcbPayments>((stringValue) =>
            AccountCapabilitiesJcbPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['jp_bank_transfer_payments'] = (node) =>
        jpBankTransferPayments =
            node.getEnumValue<AccountCapabilitiesJpBankTransferPayments>(
                (stringValue) => AccountCapabilitiesJpBankTransferPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['kakao_pay_payments'] = (node) => kakaoPayPayments =
        node.getEnumValue<AccountCapabilitiesKakaoPayPayments>((stringValue) =>
            AccountCapabilitiesKakaoPayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['klarna_payments'] = (node) => klarnaPayments =
        node.getEnumValue<AccountCapabilitiesKlarnaPayments>((stringValue) =>
            AccountCapabilitiesKlarnaPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['konbini_payments'] = (node) => konbiniPayments =
        node.getEnumValue<AccountCapabilitiesKonbiniPayments>((stringValue) =>
            AccountCapabilitiesKonbiniPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['kr_card_payments'] = (node) => krCardPayments =
        node.getEnumValue<AccountCapabilitiesKrCardPayments>((stringValue) =>
            AccountCapabilitiesKrCardPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['legacy_payments'] = (node) => legacyPayments =
        node.getEnumValue<AccountCapabilitiesLegacyPayments>((stringValue) =>
            AccountCapabilitiesLegacyPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['link_payments'] = (node) => linkPayments =
        node.getEnumValue<AccountCapabilitiesLinkPayments>((stringValue) =>
            AccountCapabilitiesLinkPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['mb_way_payments'] = (node) => mbWayPayments =
        node.getEnumValue<AccountCapabilitiesMbWayPayments>((stringValue) =>
            AccountCapabilitiesMbWayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['mobilepay_payments'] = (node) => mobilepayPayments =
        node.getEnumValue<AccountCapabilitiesMobilepayPayments>((stringValue) =>
            AccountCapabilitiesMobilepayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['multibanco_payments'] = (node) => multibancoPayments =
        node.getEnumValue<AccountCapabilitiesMultibancoPayments>(
            (stringValue) => AccountCapabilitiesMultibancoPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['mx_bank_transfer_payments'] = (node) =>
        mxBankTransferPayments =
            node.getEnumValue<AccountCapabilitiesMxBankTransferPayments>(
                (stringValue) => AccountCapabilitiesMxBankTransferPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['naver_pay_payments'] = (node) => naverPayPayments =
        node.getEnumValue<AccountCapabilitiesNaverPayPayments>((stringValue) =>
            AccountCapabilitiesNaverPayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['nz_bank_account_becs_debit_payments'] = (node) =>
        nzBankAccountBecsDebitPayments = node
            .getEnumValue<AccountCapabilitiesNzBankAccountBecsDebitPayments>(
                (stringValue) =>
                    AccountCapabilitiesNzBankAccountBecsDebitPayments.values
                        .where((enumVal) => enumVal.value == stringValue)
                        .firstOrNull);
    deserializerMap['oxxo_payments'] = (node) => oxxoPayments =
        node.getEnumValue<AccountCapabilitiesOxxoPayments>((stringValue) =>
            AccountCapabilitiesOxxoPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['p24_payments'] = (node) => p24Payments =
        node.getEnumValue<AccountCapabilitiesP24Payments>((stringValue) =>
            AccountCapabilitiesP24Payments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['pay_by_bank_payments'] = (node) => payByBankPayments =
        node.getEnumValue<AccountCapabilitiesPayByBankPayments>((stringValue) =>
            AccountCapabilitiesPayByBankPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payco_payments'] = (node) => paycoPayments =
        node.getEnumValue<AccountCapabilitiesPaycoPayments>((stringValue) =>
            AccountCapabilitiesPaycoPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['paynow_payments'] = (node) => paynowPayments =
        node.getEnumValue<AccountCapabilitiesPaynowPayments>((stringValue) =>
            AccountCapabilitiesPaynowPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['payto_payments'] = (node) => paytoPayments =
        node.getEnumValue<AccountCapabilitiesPaytoPayments>((stringValue) =>
            AccountCapabilitiesPaytoPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['pix_payments'] = (node) => pixPayments =
        node.getEnumValue<AccountCapabilitiesPixPayments>((stringValue) =>
            AccountCapabilitiesPixPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['promptpay_payments'] = (node) => promptpayPayments =
        node.getEnumValue<AccountCapabilitiesPromptpayPayments>((stringValue) =>
            AccountCapabilitiesPromptpayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['revolut_pay_payments'] = (node) => revolutPayPayments =
        node.getEnumValue<AccountCapabilitiesRevolutPayPayments>(
            (stringValue) => AccountCapabilitiesRevolutPayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['samsung_pay_payments'] = (node) => samsungPayPayments =
        node.getEnumValue<AccountCapabilitiesSamsungPayPayments>(
            (stringValue) => AccountCapabilitiesSamsungPayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['satispay_payments'] = (node) => satispayPayments =
        node.getEnumValue<AccountCapabilitiesSatispayPayments>((stringValue) =>
            AccountCapabilitiesSatispayPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['sepa_bank_transfer_payments'] = (node) =>
        sepaBankTransferPayments =
            node.getEnumValue<AccountCapabilitiesSepaBankTransferPayments>(
                (stringValue) => AccountCapabilitiesSepaBankTransferPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['sepa_debit_payments'] = (node) => sepaDebitPayments =
        node.getEnumValue<AccountCapabilitiesSepaDebitPayments>((stringValue) =>
            AccountCapabilitiesSepaDebitPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['sofort_payments'] = (node) => sofortPayments =
        node.getEnumValue<AccountCapabilitiesSofortPayments>((stringValue) =>
            AccountCapabilitiesSofortPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['swish_payments'] = (node) => swishPayments =
        node.getEnumValue<AccountCapabilitiesSwishPayments>((stringValue) =>
            AccountCapabilitiesSwishPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_reporting_us_1099_k'] = (node) => taxReportingUs1099K =
        node.getEnumValue<AccountCapabilitiesTaxReportingUs1099K>(
            (stringValue) => AccountCapabilitiesTaxReportingUs1099K.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['tax_reporting_us_1099_misc'] = (node) =>
        taxReportingUs1099Misc =
            node.getEnumValue<AccountCapabilitiesTaxReportingUs1099Misc>(
                (stringValue) => AccountCapabilitiesTaxReportingUs1099Misc
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['transfers'] = (node) => transfers =
        node.getEnumValue<AccountCapabilitiesTransfers>((stringValue) =>
            AccountCapabilitiesTransfers.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['treasury'] = (node) => treasury =
        node.getEnumValue<AccountCapabilitiesTreasury>((stringValue) =>
            AccountCapabilitiesTreasury.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['twint_payments'] = (node) => twintPayments =
        node.getEnumValue<AccountCapabilitiesTwintPayments>((stringValue) =>
            AccountCapabilitiesTwintPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account_ach_payments'] = (node) =>
        usBankAccountAchPayments =
            node.getEnumValue<AccountCapabilitiesUsBankAccountAchPayments>(
                (stringValue) => AccountCapabilitiesUsBankAccountAchPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['us_bank_transfer_payments'] = (node) =>
        usBankTransferPayments =
            node.getEnumValue<AccountCapabilitiesUsBankTransferPayments>(
                (stringValue) => AccountCapabilitiesUsBankTransferPayments
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['zip_payments'] = (node) => zipPayments =
        node.getEnumValue<AccountCapabilitiesZipPayments>((stringValue) =>
            AccountCapabilitiesZipPayments.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<AccountCapabilitiesAcssDebitPayments>(
        'acss_debit_payments', acssDebitPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesAffirmPayments>(
        'affirm_payments', affirmPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesAfterpayClearpayPayments>(
        'afterpay_clearpay_payments',
        afterpayClearpayPayments,
        (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesAlmaPayments>(
        'alma_payments', almaPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesAmazonPayPayments>(
        'amazon_pay_payments', amazonPayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesAuBecsDebitPayments>(
        'au_becs_debit_payments', auBecsDebitPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesBacsDebitPayments>(
        'bacs_debit_payments', bacsDebitPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesBancontactPayments>(
        'bancontact_payments', bancontactPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesBankTransferPayments>(
        'bank_transfer_payments', bankTransferPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesBilliePayments>(
        'billie_payments', billiePayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesBlikPayments>(
        'blik_payments', blikPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesBoletoPayments>(
        'boleto_payments', boletoPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesCardIssuing>(
        'card_issuing', cardIssuing, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesCardPayments>(
        'card_payments', cardPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesCartesBancairesPayments>(
        'cartes_bancaires_payments', cartesBancairesPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesCashappPayments>(
        'cashapp_payments', cashappPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesCryptoPayments>(
        'crypto_payments', cryptoPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesEpsPayments>(
        'eps_payments', epsPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesFpxPayments>(
        'fpx_payments', fpxPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesGbBankTransferPayments>(
        'gb_bank_transfer_payments', gbBankTransferPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesGiropayPayments>(
        'giropay_payments', giropayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesGrabpayPayments>(
        'grabpay_payments', grabpayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesIdealPayments>(
        'ideal_payments', idealPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesIndiaInternationalPayments>(
        'india_international_payments',
        indiaInternationalPayments,
        (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesJcbPayments>(
        'jcb_payments', jcbPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesJpBankTransferPayments>(
        'jp_bank_transfer_payments', jpBankTransferPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesKakaoPayPayments>(
        'kakao_pay_payments', kakaoPayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesKlarnaPayments>(
        'klarna_payments', klarnaPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesKonbiniPayments>(
        'konbini_payments', konbiniPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesKrCardPayments>(
        'kr_card_payments', krCardPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesLegacyPayments>(
        'legacy_payments', legacyPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesLinkPayments>(
        'link_payments', linkPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesMbWayPayments>(
        'mb_way_payments', mbWayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesMobilepayPayments>(
        'mobilepay_payments', mobilepayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesMultibancoPayments>(
        'multibanco_payments', multibancoPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesMxBankTransferPayments>(
        'mx_bank_transfer_payments', mxBankTransferPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesNaverPayPayments>(
        'naver_pay_payments', naverPayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesNzBankAccountBecsDebitPayments>(
        'nz_bank_account_becs_debit_payments',
        nzBankAccountBecsDebitPayments,
        (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesOxxoPayments>(
        'oxxo_payments', oxxoPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesP24Payments>(
        'p24_payments', p24Payments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesPayByBankPayments>(
        'pay_by_bank_payments', payByBankPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesPaycoPayments>(
        'payco_payments', paycoPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesPaynowPayments>(
        'paynow_payments', paynowPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesPaytoPayments>(
        'payto_payments', paytoPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesPixPayments>(
        'pix_payments', pixPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesPromptpayPayments>(
        'promptpay_payments', promptpayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesRevolutPayPayments>(
        'revolut_pay_payments', revolutPayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesSamsungPayPayments>(
        'samsung_pay_payments', samsungPayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesSatispayPayments>(
        'satispay_payments', satispayPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesSepaBankTransferPayments>(
        'sepa_bank_transfer_payments',
        sepaBankTransferPayments,
        (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesSepaDebitPayments>(
        'sepa_debit_payments', sepaDebitPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesSofortPayments>(
        'sofort_payments', sofortPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesSwishPayments>(
        'swish_payments', swishPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesTaxReportingUs1099K>(
        'tax_reporting_us_1099_k', taxReportingUs1099K, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesTaxReportingUs1099Misc>(
        'tax_reporting_us_1099_misc', taxReportingUs1099Misc, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesTransfers>(
        'transfers', transfers, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesTreasury>(
        'treasury', treasury, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesTwintPayments>(
        'twint_payments', twintPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesUsBankAccountAchPayments>(
        'us_bank_account_ach_payments',
        usBankAccountAchPayments,
        (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesUsBankTransferPayments>(
        'us_bank_transfer_payments', usBankTransferPayments, (e) => e?.value);
    writer.writeEnumValue<AccountCapabilitiesZipPayments>(
        'zip_payments', zipPayments, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
