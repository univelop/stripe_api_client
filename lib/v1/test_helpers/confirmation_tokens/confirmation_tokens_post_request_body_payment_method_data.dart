// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirmation_tokens_post_request_body_payment_method_data_acss_debit.dart';
import './confirmation_tokens_post_request_body_payment_method_data_affirm.dart';
import './confirmation_tokens_post_request_body_payment_method_data_afterpay_clearpay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_alipay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_allow_redisplay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_alma.dart';
import './confirmation_tokens_post_request_body_payment_method_data_amazon_pay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_au_becs_debit.dart';
import './confirmation_tokens_post_request_body_payment_method_data_bacs_debit.dart';
import './confirmation_tokens_post_request_body_payment_method_data_bancontact.dart';
import './confirmation_tokens_post_request_body_payment_method_data_billie.dart';
import './confirmation_tokens_post_request_body_payment_method_data_billing_details.dart';
import './confirmation_tokens_post_request_body_payment_method_data_blik.dart';
import './confirmation_tokens_post_request_body_payment_method_data_boleto.dart';
import './confirmation_tokens_post_request_body_payment_method_data_cashapp.dart';
import './confirmation_tokens_post_request_body_payment_method_data_crypto.dart';
import './confirmation_tokens_post_request_body_payment_method_data_customer_balance.dart';
import './confirmation_tokens_post_request_body_payment_method_data_eps.dart';
import './confirmation_tokens_post_request_body_payment_method_data_fpx.dart';
import './confirmation_tokens_post_request_body_payment_method_data_giropay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_grabpay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_ideal.dart';
import './confirmation_tokens_post_request_body_payment_method_data_interac_present.dart';
import './confirmation_tokens_post_request_body_payment_method_data_kakao_pay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_klarna.dart';
import './confirmation_tokens_post_request_body_payment_method_data_konbini.dart';
import './confirmation_tokens_post_request_body_payment_method_data_kr_card.dart';
import './confirmation_tokens_post_request_body_payment_method_data_link.dart';
import './confirmation_tokens_post_request_body_payment_method_data_mb_way.dart';
import './confirmation_tokens_post_request_body_payment_method_data_metadata.dart';
import './confirmation_tokens_post_request_body_payment_method_data_mobilepay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_multibanco.dart';
import './confirmation_tokens_post_request_body_payment_method_data_naver_pay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_nz_bank_account.dart';
import './confirmation_tokens_post_request_body_payment_method_data_oxxo.dart';
import './confirmation_tokens_post_request_body_payment_method_data_p24.dart';
import './confirmation_tokens_post_request_body_payment_method_data_pay_by_bank.dart';
import './confirmation_tokens_post_request_body_payment_method_data_payco.dart';
import './confirmation_tokens_post_request_body_payment_method_data_paynow.dart';
import './confirmation_tokens_post_request_body_payment_method_data_paypal.dart';
import './confirmation_tokens_post_request_body_payment_method_data_payto.dart';
import './confirmation_tokens_post_request_body_payment_method_data_pix.dart';
import './confirmation_tokens_post_request_body_payment_method_data_promptpay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_radar_options.dart';
import './confirmation_tokens_post_request_body_payment_method_data_revolut_pay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_samsung_pay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_satispay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_sepa_debit.dart';
import './confirmation_tokens_post_request_body_payment_method_data_sofort.dart';
import './confirmation_tokens_post_request_body_payment_method_data_swish.dart';
import './confirmation_tokens_post_request_body_payment_method_data_twint.dart';
import './confirmation_tokens_post_request_body_payment_method_data_type.dart';
import './confirmation_tokens_post_request_body_payment_method_data_us_bank_account.dart';
import './confirmation_tokens_post_request_body_payment_method_data_wechat_pay.dart';
import './confirmation_tokens_post_request_body_payment_method_data_zip.dart';

/// auto generated
/// If provided, this hash will be used to create a PaymentMethod.
class ConfirmationTokensPostRequestBodyPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAffirm? affirm;

  ///  The afterpay_clearpay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAfterpayClearpay?
      afterpayClearpay;

  ///  The alipay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAlipay? alipay;

  ///  The allow_redisplay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAllowRedisplay?
      allowRedisplay;

  ///  The alma property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAlma? alma;

  ///  The amazon_pay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAmazonPay? amazonPay;

  ///  The au_becs_debit property
  ConfirmationTokensPostRequestBodyPaymentMethodDataAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBacsDebit? bacsDebit;

  ///  The bancontact property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBancontact? bancontact;

  ///  The billie property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillie? billie;

  ///  The billing_details property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails?
      billingDetails;

  ///  The blik property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBlik? blik;

  ///  The boleto property
  ConfirmationTokensPostRequestBodyPaymentMethodDataBoleto? boleto;

  ///  The cashapp property
  ConfirmationTokensPostRequestBodyPaymentMethodDataCashapp? cashapp;

  ///  The crypto property
  ConfirmationTokensPostRequestBodyPaymentMethodDataCrypto? crypto;

  ///  The customer_balance property
  ConfirmationTokensPostRequestBodyPaymentMethodDataCustomerBalance?
      customerBalance;

  ///  The eps property
  ConfirmationTokensPostRequestBodyPaymentMethodDataEps? eps;

  ///  The fpx property
  ConfirmationTokensPostRequestBodyPaymentMethodDataFpx? fpx;

  ///  The giropay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataGiropay? giropay;

  ///  The grabpay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataGrabpay? grabpay;

  ///  The ideal property
  ConfirmationTokensPostRequestBodyPaymentMethodDataIdeal? ideal;

  ///  The interac_present property
  ConfirmationTokensPostRequestBodyPaymentMethodDataInteracPresent?
      interacPresent;

  ///  The kakao_pay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataKakaoPay? kakaoPay;

  ///  The klarna property
  ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna? klarna;

  ///  The konbini property
  ConfirmationTokensPostRequestBodyPaymentMethodDataKonbini? konbini;

  ///  The kr_card property
  ConfirmationTokensPostRequestBodyPaymentMethodDataKrCard? krCard;

  ///  The link property
  ConfirmationTokensPostRequestBodyPaymentMethodDataLink? link;

  ///  The mb_way property
  ConfirmationTokensPostRequestBodyPaymentMethodDataMbWay? mbWay;

  ///  The metadata property
  ConfirmationTokensPostRequestBodyPaymentMethodDataMetadata? metadata;

  ///  The mobilepay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataMobilepay? mobilepay;

  ///  The multibanco property
  ConfirmationTokensPostRequestBodyPaymentMethodDataMultibanco? multibanco;

  ///  The naver_pay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataNaverPay? naverPay;

  ///  The nz_bank_account property
  ConfirmationTokensPostRequestBodyPaymentMethodDataNzBankAccount?
      nzBankAccount;

  ///  The oxxo property
  ConfirmationTokensPostRequestBodyPaymentMethodDataOxxo? oxxo;

  ///  The p24 property
  ConfirmationTokensPostRequestBodyPaymentMethodDataP24? p24;

  ///  The pay_by_bank property
  ConfirmationTokensPostRequestBodyPaymentMethodDataPayByBank? payByBank;

  ///  The payco property
  ConfirmationTokensPostRequestBodyPaymentMethodDataPayco? payco;

  ///  The paynow property
  ConfirmationTokensPostRequestBodyPaymentMethodDataPaynow? paynow;

  ///  The paypal property
  ConfirmationTokensPostRequestBodyPaymentMethodDataPaypal? paypal;

  ///  The payto property
  ConfirmationTokensPostRequestBodyPaymentMethodDataPayto? payto;

  ///  The pix property
  ConfirmationTokensPostRequestBodyPaymentMethodDataPix? pix;

  ///  The promptpay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataPromptpay? promptpay;

  ///  The radar_options property
  ConfirmationTokensPostRequestBodyPaymentMethodDataRadarOptions? radarOptions;

  ///  The revolut_pay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataRevolutPay? revolutPay;

  ///  The samsung_pay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataSamsungPay? samsungPay;

  ///  The satispay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataSatispay? satispay;

  ///  The sepa_debit property
  ConfirmationTokensPostRequestBodyPaymentMethodDataSepaDebit? sepaDebit;

  ///  The sofort property
  ConfirmationTokensPostRequestBodyPaymentMethodDataSofort? sofort;

  ///  The swish property
  ConfirmationTokensPostRequestBodyPaymentMethodDataSwish? swish;

  ///  The twint property
  ConfirmationTokensPostRequestBodyPaymentMethodDataTwint? twint;

  ///  The type property
  ConfirmationTokensPostRequestBodyPaymentMethodDataType? type_;

  ///  The us_bank_account property
  ConfirmationTokensPostRequestBodyPaymentMethodDataUsBankAccount?
      usBankAccount;

  ///  The wechat_pay property
  ConfirmationTokensPostRequestBodyPaymentMethodDataWechatPay? wechatPay;

  ///  The zip property
  ConfirmationTokensPostRequestBodyPaymentMethodDataZip? zip;

  /// Instantiates a new [ConfirmationTokensPostRequestBodyPaymentMethodData] and sets the default values.
  ConfirmationTokensPostRequestBodyPaymentMethodData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmationTokensPostRequestBodyPaymentMethodData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmationTokensPostRequestBodyPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAcssDebit>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAffirm>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataAffirm
            .createFromDiscriminatorValue);
    deserializerMap[
        'afterpay_clearpay'] = (node) => afterpayClearpay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAfterpayClearpay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataAfterpayClearpay
            .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAlipay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataAlipay
            .createFromDiscriminatorValue);
    deserializerMap[
        'allow_redisplay'] = (node) => allowRedisplay = node.getEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAllowRedisplay>(
        (stringValue) =>
            ConfirmationTokensPostRequestBodyPaymentMethodDataAllowRedisplay
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['alma'] = (node) => alma = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataAlma>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAmazonPay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataAmazonPay
            .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<
                ConfirmationTokensPostRequestBodyPaymentMethodDataAuBecsDebit>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBacsDebit>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBacsDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBancontact>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBancontact
            .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillie>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBillie
            .createFromDiscriminatorValue);
    deserializerMap[
        'billing_details'] = (node) => billingDetails = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails
            .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataBlik>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBoleto>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataBoleto
            .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataCashapp>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataCashapp
            .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataCrypto>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataCrypto
            .createFromDiscriminatorValue);
    deserializerMap[
        'customer_balance'] = (node) => customerBalance = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataCustomerBalance>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataCustomerBalance
            .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataEps>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataFpx>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataGiropay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataGiropay
            .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataGrabpay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataGrabpay
            .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataIdeal>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataIdeal
            .createFromDiscriminatorValue);
    deserializerMap[
        'interac_present'] = (node) => interacPresent = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataInteracPresent>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataInteracPresent
            .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKakaoPay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataKakaoPay
            .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna
            .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKonbini>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataKonbini
            .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKrCard>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataKrCard
            .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataLink>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMbWay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataMbWay
            .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMetadata>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataMetadata
            .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMobilepay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataMobilepay
            .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMultibanco>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataMultibanco
            .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataNaverPay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataNaverPay
            .createFromDiscriminatorValue);
    deserializerMap[
        'nz_bank_account'] = (node) => nzBankAccount = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataNzBankAccount>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataNzBankAccount
            .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataOxxo>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataP24>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPayByBank>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataPayByBank
            .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPayco>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataPayco
            .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPaynow>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataPaynow
            .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPaypal>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataPaypal
            .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPayto>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataPayto
            .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataPix>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPromptpay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataPromptpay
            .createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<
                ConfirmationTokensPostRequestBodyPaymentMethodDataRadarOptions>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataRadarOptions
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataRevolutPay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataRevolutPay
            .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSamsungPay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataSamsungPay
            .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSatispay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataSatispay
            .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSepaDebit>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataSepaDebit
            .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSofort>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataSofort
            .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSwish>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataSwish
            .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataTwint>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataTwint
            .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node
        .getEnumValue<ConfirmationTokensPostRequestBodyPaymentMethodDataType>(
            (stringValue) =>
                ConfirmationTokensPostRequestBodyPaymentMethodDataType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'us_bank_account'] = (node) => usBankAccount = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataUsBankAccount>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataUsBankAccount
            .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node.getObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataWechatPay>(
        ConfirmationTokensPostRequestBodyPaymentMethodDataWechatPay
            .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip = node
        .getObjectValue<ConfirmationTokensPostRequestBodyPaymentMethodDataZip>(
            ConfirmationTokensPostRequestBodyPaymentMethodDataZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAlipay>(
        'alipay', alipay);
    writer.writeEnumValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataAlma>('alma', alma);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillie>(
        'billie', billie);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataBlik>('blik', blik);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataEps>('eps', eps);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataFpx>('fpx', fpx);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataIdeal>(
        'ideal', ideal);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataLink>('link', link);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMbWay>(
        'mb_way', mbWay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataOxxo>('oxxo', oxxo);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataP24>('p24', p24);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPayByBank>(
        'pay_by_bank', payByBank);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPayco>(
        'payco', payco);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPayto>(
        'payto', payto);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataPix>('pix', pix);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataRadarOptions>(
        'radar_options', radarOptions);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSatispay>(
        'satispay', satispay);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSofort>(
        'sofort', sofort);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataSwish>(
        'swish', swish);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataTwint>(
        'twint', twint);
    writer
        .writeEnumValue<ConfirmationTokensPostRequestBodyPaymentMethodDataType>(
            'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<
            ConfirmationTokensPostRequestBodyPaymentMethodDataWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<
        ConfirmationTokensPostRequestBodyPaymentMethodDataZip>('zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
