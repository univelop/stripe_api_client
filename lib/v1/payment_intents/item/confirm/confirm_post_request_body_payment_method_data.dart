// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_data_acss_debit.dart';
import './confirm_post_request_body_payment_method_data_affirm.dart';
import './confirm_post_request_body_payment_method_data_afterpay_clearpay.dart';
import './confirm_post_request_body_payment_method_data_alipay.dart';
import './confirm_post_request_body_payment_method_data_allow_redisplay.dart';
import './confirm_post_request_body_payment_method_data_alma.dart';
import './confirm_post_request_body_payment_method_data_amazon_pay.dart';
import './confirm_post_request_body_payment_method_data_au_becs_debit.dart';
import './confirm_post_request_body_payment_method_data_bacs_debit.dart';
import './confirm_post_request_body_payment_method_data_bancontact.dart';
import './confirm_post_request_body_payment_method_data_billie.dart';
import './confirm_post_request_body_payment_method_data_billing_details.dart';
import './confirm_post_request_body_payment_method_data_blik.dart';
import './confirm_post_request_body_payment_method_data_boleto.dart';
import './confirm_post_request_body_payment_method_data_cashapp.dart';
import './confirm_post_request_body_payment_method_data_crypto.dart';
import './confirm_post_request_body_payment_method_data_customer_balance.dart';
import './confirm_post_request_body_payment_method_data_eps.dart';
import './confirm_post_request_body_payment_method_data_fpx.dart';
import './confirm_post_request_body_payment_method_data_giropay.dart';
import './confirm_post_request_body_payment_method_data_grabpay.dart';
import './confirm_post_request_body_payment_method_data_ideal.dart';
import './confirm_post_request_body_payment_method_data_interac_present.dart';
import './confirm_post_request_body_payment_method_data_kakao_pay.dart';
import './confirm_post_request_body_payment_method_data_klarna.dart';
import './confirm_post_request_body_payment_method_data_konbini.dart';
import './confirm_post_request_body_payment_method_data_kr_card.dart';
import './confirm_post_request_body_payment_method_data_link.dart';
import './confirm_post_request_body_payment_method_data_mb_way.dart';
import './confirm_post_request_body_payment_method_data_metadata.dart';
import './confirm_post_request_body_payment_method_data_mobilepay.dart';
import './confirm_post_request_body_payment_method_data_multibanco.dart';
import './confirm_post_request_body_payment_method_data_naver_pay.dart';
import './confirm_post_request_body_payment_method_data_nz_bank_account.dart';
import './confirm_post_request_body_payment_method_data_oxxo.dart';
import './confirm_post_request_body_payment_method_data_p24.dart';
import './confirm_post_request_body_payment_method_data_pay_by_bank.dart';
import './confirm_post_request_body_payment_method_data_payco.dart';
import './confirm_post_request_body_payment_method_data_paynow.dart';
import './confirm_post_request_body_payment_method_data_paypal.dart';
import './confirm_post_request_body_payment_method_data_payto.dart';
import './confirm_post_request_body_payment_method_data_pix.dart';
import './confirm_post_request_body_payment_method_data_promptpay.dart';
import './confirm_post_request_body_payment_method_data_radar_options.dart';
import './confirm_post_request_body_payment_method_data_revolut_pay.dart';
import './confirm_post_request_body_payment_method_data_samsung_pay.dart';
import './confirm_post_request_body_payment_method_data_satispay.dart';
import './confirm_post_request_body_payment_method_data_sepa_debit.dart';
import './confirm_post_request_body_payment_method_data_sofort.dart';
import './confirm_post_request_body_payment_method_data_swish.dart';
import './confirm_post_request_body_payment_method_data_twint.dart';
import './confirm_post_request_body_payment_method_data_type.dart';
import './confirm_post_request_body_payment_method_data_us_bank_account.dart';
import './confirm_post_request_body_payment_method_data_wechat_pay.dart';
import './confirm_post_request_body_payment_method_data_zip.dart';

/// auto generated
/// If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appearin the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)property on the PaymentIntent.
class ConfirmPostRequestBodyPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  ConfirmPostRequestBodyPaymentMethodDataAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  ConfirmPostRequestBodyPaymentMethodDataAffirm? affirm;

  ///  The afterpay_clearpay property
  ConfirmPostRequestBodyPaymentMethodDataAfterpayClearpay? afterpayClearpay;

  ///  The alipay property
  ConfirmPostRequestBodyPaymentMethodDataAlipay? alipay;

  ///  The allow_redisplay property
  ConfirmPostRequestBodyPaymentMethodDataAllowRedisplay? allowRedisplay;

  ///  The alma property
  ConfirmPostRequestBodyPaymentMethodDataAlma? alma;

  ///  The amazon_pay property
  ConfirmPostRequestBodyPaymentMethodDataAmazonPay? amazonPay;

  ///  The au_becs_debit property
  ConfirmPostRequestBodyPaymentMethodDataAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  ConfirmPostRequestBodyPaymentMethodDataBacsDebit? bacsDebit;

  ///  The bancontact property
  ConfirmPostRequestBodyPaymentMethodDataBancontact? bancontact;

  ///  The billie property
  ConfirmPostRequestBodyPaymentMethodDataBillie? billie;

  ///  The billing_details property
  ConfirmPostRequestBodyPaymentMethodDataBillingDetails? billingDetails;

  ///  The blik property
  ConfirmPostRequestBodyPaymentMethodDataBlik? blik;

  ///  The boleto property
  ConfirmPostRequestBodyPaymentMethodDataBoleto? boleto;

  ///  The cashapp property
  ConfirmPostRequestBodyPaymentMethodDataCashapp? cashapp;

  ///  The crypto property
  ConfirmPostRequestBodyPaymentMethodDataCrypto? crypto;

  ///  The customer_balance property
  ConfirmPostRequestBodyPaymentMethodDataCustomerBalance? customerBalance;

  ///  The eps property
  ConfirmPostRequestBodyPaymentMethodDataEps? eps;

  ///  The fpx property
  ConfirmPostRequestBodyPaymentMethodDataFpx? fpx;

  ///  The giropay property
  ConfirmPostRequestBodyPaymentMethodDataGiropay? giropay;

  ///  The grabpay property
  ConfirmPostRequestBodyPaymentMethodDataGrabpay? grabpay;

  ///  The ideal property
  ConfirmPostRequestBodyPaymentMethodDataIdeal? ideal;

  ///  The interac_present property
  ConfirmPostRequestBodyPaymentMethodDataInteracPresent? interacPresent;

  ///  The kakao_pay property
  ConfirmPostRequestBodyPaymentMethodDataKakaoPay? kakaoPay;

  ///  The klarna property
  ConfirmPostRequestBodyPaymentMethodDataKlarna? klarna;

  ///  The konbini property
  ConfirmPostRequestBodyPaymentMethodDataKonbini? konbini;

  ///  The kr_card property
  ConfirmPostRequestBodyPaymentMethodDataKrCard? krCard;

  ///  The link property
  ConfirmPostRequestBodyPaymentMethodDataLink? link;

  ///  The mb_way property
  ConfirmPostRequestBodyPaymentMethodDataMbWay? mbWay;

  ///  The metadata property
  ConfirmPostRequestBodyPaymentMethodDataMetadata? metadata;

  ///  The mobilepay property
  ConfirmPostRequestBodyPaymentMethodDataMobilepay? mobilepay;

  ///  The multibanco property
  ConfirmPostRequestBodyPaymentMethodDataMultibanco? multibanco;

  ///  The naver_pay property
  ConfirmPostRequestBodyPaymentMethodDataNaverPay? naverPay;

  ///  The nz_bank_account property
  ConfirmPostRequestBodyPaymentMethodDataNzBankAccount? nzBankAccount;

  ///  The oxxo property
  ConfirmPostRequestBodyPaymentMethodDataOxxo? oxxo;

  ///  The p24 property
  ConfirmPostRequestBodyPaymentMethodDataP24? p24;

  ///  The pay_by_bank property
  ConfirmPostRequestBodyPaymentMethodDataPayByBank? payByBank;

  ///  The payco property
  ConfirmPostRequestBodyPaymentMethodDataPayco? payco;

  ///  The paynow property
  ConfirmPostRequestBodyPaymentMethodDataPaynow? paynow;

  ///  The paypal property
  ConfirmPostRequestBodyPaymentMethodDataPaypal? paypal;

  ///  The payto property
  ConfirmPostRequestBodyPaymentMethodDataPayto? payto;

  ///  The pix property
  ConfirmPostRequestBodyPaymentMethodDataPix? pix;

  ///  The promptpay property
  ConfirmPostRequestBodyPaymentMethodDataPromptpay? promptpay;

  ///  The radar_options property
  ConfirmPostRequestBodyPaymentMethodDataRadarOptions? radarOptions;

  ///  The revolut_pay property
  ConfirmPostRequestBodyPaymentMethodDataRevolutPay? revolutPay;

  ///  The samsung_pay property
  ConfirmPostRequestBodyPaymentMethodDataSamsungPay? samsungPay;

  ///  The satispay property
  ConfirmPostRequestBodyPaymentMethodDataSatispay? satispay;

  ///  The sepa_debit property
  ConfirmPostRequestBodyPaymentMethodDataSepaDebit? sepaDebit;

  ///  The sofort property
  ConfirmPostRequestBodyPaymentMethodDataSofort? sofort;

  ///  The swish property
  ConfirmPostRequestBodyPaymentMethodDataSwish? swish;

  ///  The twint property
  ConfirmPostRequestBodyPaymentMethodDataTwint? twint;

  ///  The type property
  ConfirmPostRequestBodyPaymentMethodDataType? type_;

  ///  The us_bank_account property
  ConfirmPostRequestBodyPaymentMethodDataUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  ConfirmPostRequestBodyPaymentMethodDataWechatPay? wechatPay;

  ///  The zip property
  ConfirmPostRequestBodyPaymentMethodDataZip? zip;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodData] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodData createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataAcssDebit>(
            ConfirmPostRequestBodyPaymentMethodDataAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataAffirm>(
            ConfirmPostRequestBodyPaymentMethodDataAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodDataAfterpayClearpay>(
            ConfirmPostRequestBodyPaymentMethodDataAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataAlipay>(
            ConfirmPostRequestBodyPaymentMethodDataAlipay
                .createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay = node
        .getEnumValue<ConfirmPostRequestBodyPaymentMethodDataAllowRedisplay>(
            (stringValue) =>
                ConfirmPostRequestBodyPaymentMethodDataAllowRedisplay.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataAlma>(
            ConfirmPostRequestBodyPaymentMethodDataAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataAmazonPay>(
            ConfirmPostRequestBodyPaymentMethodDataAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataAuBecsDebit>(
            ConfirmPostRequestBodyPaymentMethodDataAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataBacsDebit>(
            ConfirmPostRequestBodyPaymentMethodDataBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataBancontact>(
            ConfirmPostRequestBodyPaymentMethodDataBancontact
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataBillie>(
            ConfirmPostRequestBodyPaymentMethodDataBillie
                .createFromDiscriminatorValue);
    deserializerMap['billing_details'] = (node) => billingDetails = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodDataBillingDetails>(
            ConfirmPostRequestBodyPaymentMethodDataBillingDetails
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataBlik>(
            ConfirmPostRequestBodyPaymentMethodDataBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataBoleto>(
            ConfirmPostRequestBodyPaymentMethodDataBoleto
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataCashapp>(
            ConfirmPostRequestBodyPaymentMethodDataCashapp
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataCrypto>(
            ConfirmPostRequestBodyPaymentMethodDataCrypto
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodDataCustomerBalance>(
            ConfirmPostRequestBodyPaymentMethodDataCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataEps>(
            ConfirmPostRequestBodyPaymentMethodDataEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataFpx>(
            ConfirmPostRequestBodyPaymentMethodDataFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataGiropay>(
            ConfirmPostRequestBodyPaymentMethodDataGiropay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataGrabpay>(
            ConfirmPostRequestBodyPaymentMethodDataGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataIdeal>(
            ConfirmPostRequestBodyPaymentMethodDataIdeal
                .createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodDataInteracPresent>(
            ConfirmPostRequestBodyPaymentMethodDataInteracPresent
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataKakaoPay>(
            ConfirmPostRequestBodyPaymentMethodDataKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataKlarna>(
            ConfirmPostRequestBodyPaymentMethodDataKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataKonbini>(
            ConfirmPostRequestBodyPaymentMethodDataKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataKrCard>(
            ConfirmPostRequestBodyPaymentMethodDataKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataLink>(
            ConfirmPostRequestBodyPaymentMethodDataLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataMbWay>(
            ConfirmPostRequestBodyPaymentMethodDataMbWay
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataMetadata>(
            ConfirmPostRequestBodyPaymentMethodDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataMobilepay>(
            ConfirmPostRequestBodyPaymentMethodDataMobilepay
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataMultibanco>(
            ConfirmPostRequestBodyPaymentMethodDataMultibanco
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataNaverPay>(
            ConfirmPostRequestBodyPaymentMethodDataNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodDataNzBankAccount>(
            ConfirmPostRequestBodyPaymentMethodDataNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataOxxo>(
            ConfirmPostRequestBodyPaymentMethodDataOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataP24>(
            ConfirmPostRequestBodyPaymentMethodDataP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataPayByBank>(
            ConfirmPostRequestBodyPaymentMethodDataPayByBank
                .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataPayco>(
            ConfirmPostRequestBodyPaymentMethodDataPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataPaynow>(
            ConfirmPostRequestBodyPaymentMethodDataPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataPaypal>(
            ConfirmPostRequestBodyPaymentMethodDataPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataPayto>(
            ConfirmPostRequestBodyPaymentMethodDataPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataPix>(
            ConfirmPostRequestBodyPaymentMethodDataPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataPromptpay>(
            ConfirmPostRequestBodyPaymentMethodDataPromptpay
                .createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodDataRadarOptions>(
            ConfirmPostRequestBodyPaymentMethodDataRadarOptions
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataRevolutPay>(
            ConfirmPostRequestBodyPaymentMethodDataRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataSamsungPay>(
            ConfirmPostRequestBodyPaymentMethodDataSamsungPay
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataSatispay>(
            ConfirmPostRequestBodyPaymentMethodDataSatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataSepaDebit>(
            ConfirmPostRequestBodyPaymentMethodDataSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataSofort>(
            ConfirmPostRequestBodyPaymentMethodDataSofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataSwish>(
            ConfirmPostRequestBodyPaymentMethodDataSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataTwint>(
            ConfirmPostRequestBodyPaymentMethodDataTwint
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<ConfirmPostRequestBodyPaymentMethodDataType>(
            (stringValue) => ConfirmPostRequestBodyPaymentMethodDataType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodDataUsBankAccount>(
            ConfirmPostRequestBodyPaymentMethodDataUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataWechatPay>(
            ConfirmPostRequestBodyPaymentMethodDataWechatPay
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodDataZip>(
            ConfirmPostRequestBodyPaymentMethodDataZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataAlipay>(
        'alipay', alipay);
    writer
        .writeEnumValue<ConfirmPostRequestBodyPaymentMethodDataAllowRedisplay>(
            'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataAlma>(
        'alma', alma);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataBillie>(
        'billie', billie);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataBlik>(
        'blik', blik);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataEps>(
        'eps', eps);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataFpx>(
        'fpx', fpx);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataIdeal>(
        'ideal', ideal);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodDataInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataLink>(
        'link', link);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataMbWay>(
        'mb_way', mbWay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataNaverPay>(
        'naver_pay', naverPay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataNzBankAccount>(
            'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataP24>(
        'p24', p24);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataPayByBank>(
        'pay_by_bank', payByBank);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataPayco>(
        'payco', payco);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataPayto>(
        'payto', payto);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataPix>(
        'pix', pix);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataPromptpay>(
        'promptpay', promptpay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataRadarOptions>(
            'radar_options', radarOptions);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataSatispay>(
        'satispay', satispay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataSofort>(
        'sofort', sofort);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataSwish>(
        'swish', swish);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataTwint>(
        'twint', twint);
    writer.writeEnumValue<ConfirmPostRequestBodyPaymentMethodDataType>(
        'type', type_, (e) => e?.value);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataUsBankAccount>(
            'us_bank_account', usBankAccount);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodDataZip>(
        'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
