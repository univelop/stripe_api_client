// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_data_acss_debit.dart';
import './payment_intents_post_request_body_payment_method_data_affirm.dart';
import './payment_intents_post_request_body_payment_method_data_afterpay_clearpay.dart';
import './payment_intents_post_request_body_payment_method_data_alipay.dart';
import './payment_intents_post_request_body_payment_method_data_allow_redisplay.dart';
import './payment_intents_post_request_body_payment_method_data_alma.dart';
import './payment_intents_post_request_body_payment_method_data_amazon_pay.dart';
import './payment_intents_post_request_body_payment_method_data_au_becs_debit.dart';
import './payment_intents_post_request_body_payment_method_data_bacs_debit.dart';
import './payment_intents_post_request_body_payment_method_data_bancontact.dart';
import './payment_intents_post_request_body_payment_method_data_billie.dart';
import './payment_intents_post_request_body_payment_method_data_billing_details.dart';
import './payment_intents_post_request_body_payment_method_data_blik.dart';
import './payment_intents_post_request_body_payment_method_data_boleto.dart';
import './payment_intents_post_request_body_payment_method_data_cashapp.dart';
import './payment_intents_post_request_body_payment_method_data_crypto.dart';
import './payment_intents_post_request_body_payment_method_data_customer_balance.dart';
import './payment_intents_post_request_body_payment_method_data_eps.dart';
import './payment_intents_post_request_body_payment_method_data_fpx.dart';
import './payment_intents_post_request_body_payment_method_data_giropay.dart';
import './payment_intents_post_request_body_payment_method_data_grabpay.dart';
import './payment_intents_post_request_body_payment_method_data_ideal.dart';
import './payment_intents_post_request_body_payment_method_data_interac_present.dart';
import './payment_intents_post_request_body_payment_method_data_kakao_pay.dart';
import './payment_intents_post_request_body_payment_method_data_klarna.dart';
import './payment_intents_post_request_body_payment_method_data_konbini.dart';
import './payment_intents_post_request_body_payment_method_data_kr_card.dart';
import './payment_intents_post_request_body_payment_method_data_link.dart';
import './payment_intents_post_request_body_payment_method_data_mb_way.dart';
import './payment_intents_post_request_body_payment_method_data_metadata.dart';
import './payment_intents_post_request_body_payment_method_data_mobilepay.dart';
import './payment_intents_post_request_body_payment_method_data_multibanco.dart';
import './payment_intents_post_request_body_payment_method_data_naver_pay.dart';
import './payment_intents_post_request_body_payment_method_data_nz_bank_account.dart';
import './payment_intents_post_request_body_payment_method_data_oxxo.dart';
import './payment_intents_post_request_body_payment_method_data_p24.dart';
import './payment_intents_post_request_body_payment_method_data_pay_by_bank.dart';
import './payment_intents_post_request_body_payment_method_data_payco.dart';
import './payment_intents_post_request_body_payment_method_data_paynow.dart';
import './payment_intents_post_request_body_payment_method_data_paypal.dart';
import './payment_intents_post_request_body_payment_method_data_payto.dart';
import './payment_intents_post_request_body_payment_method_data_pix.dart';
import './payment_intents_post_request_body_payment_method_data_promptpay.dart';
import './payment_intents_post_request_body_payment_method_data_radar_options.dart';
import './payment_intents_post_request_body_payment_method_data_revolut_pay.dart';
import './payment_intents_post_request_body_payment_method_data_samsung_pay.dart';
import './payment_intents_post_request_body_payment_method_data_satispay.dart';
import './payment_intents_post_request_body_payment_method_data_sepa_debit.dart';
import './payment_intents_post_request_body_payment_method_data_sofort.dart';
import './payment_intents_post_request_body_payment_method_data_swish.dart';
import './payment_intents_post_request_body_payment_method_data_twint.dart';
import './payment_intents_post_request_body_payment_method_data_type.dart';
import './payment_intents_post_request_body_payment_method_data_us_bank_account.dart';
import './payment_intents_post_request_body_payment_method_data_wechat_pay.dart';
import './payment_intents_post_request_body_payment_method_data_zip.dart';

/// auto generated
/// If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appearin the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)property on the PaymentIntent.
class PaymentIntentsPostRequestBodyPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  PaymentIntentsPostRequestBodyPaymentMethodDataAffirm? affirm;

  ///  The afterpay_clearpay property
  PaymentIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay?
      afterpayClearpay;

  ///  The alipay property
  PaymentIntentsPostRequestBodyPaymentMethodDataAlipay? alipay;

  ///  The allow_redisplay property
  PaymentIntentsPostRequestBodyPaymentMethodDataAllowRedisplay? allowRedisplay;

  ///  The alma property
  PaymentIntentsPostRequestBodyPaymentMethodDataAlma? alma;

  ///  The amazon_pay property
  PaymentIntentsPostRequestBodyPaymentMethodDataAmazonPay? amazonPay;

  ///  The au_becs_debit property
  PaymentIntentsPostRequestBodyPaymentMethodDataAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  PaymentIntentsPostRequestBodyPaymentMethodDataBacsDebit? bacsDebit;

  ///  The bancontact property
  PaymentIntentsPostRequestBodyPaymentMethodDataBancontact? bancontact;

  ///  The billie property
  PaymentIntentsPostRequestBodyPaymentMethodDataBillie? billie;

  ///  The billing_details property
  PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails? billingDetails;

  ///  The blik property
  PaymentIntentsPostRequestBodyPaymentMethodDataBlik? blik;

  ///  The boleto property
  PaymentIntentsPostRequestBodyPaymentMethodDataBoleto? boleto;

  ///  The cashapp property
  PaymentIntentsPostRequestBodyPaymentMethodDataCashapp? cashapp;

  ///  The crypto property
  PaymentIntentsPostRequestBodyPaymentMethodDataCrypto? crypto;

  ///  The customer_balance property
  PaymentIntentsPostRequestBodyPaymentMethodDataCustomerBalance?
      customerBalance;

  ///  The eps property
  PaymentIntentsPostRequestBodyPaymentMethodDataEps? eps;

  ///  The fpx property
  PaymentIntentsPostRequestBodyPaymentMethodDataFpx? fpx;

  ///  The giropay property
  PaymentIntentsPostRequestBodyPaymentMethodDataGiropay? giropay;

  ///  The grabpay property
  PaymentIntentsPostRequestBodyPaymentMethodDataGrabpay? grabpay;

  ///  The ideal property
  PaymentIntentsPostRequestBodyPaymentMethodDataIdeal? ideal;

  ///  The interac_present property
  PaymentIntentsPostRequestBodyPaymentMethodDataInteracPresent? interacPresent;

  ///  The kakao_pay property
  PaymentIntentsPostRequestBodyPaymentMethodDataKakaoPay? kakaoPay;

  ///  The klarna property
  PaymentIntentsPostRequestBodyPaymentMethodDataKlarna? klarna;

  ///  The konbini property
  PaymentIntentsPostRequestBodyPaymentMethodDataKonbini? konbini;

  ///  The kr_card property
  PaymentIntentsPostRequestBodyPaymentMethodDataKrCard? krCard;

  ///  The link property
  PaymentIntentsPostRequestBodyPaymentMethodDataLink? link;

  ///  The mb_way property
  PaymentIntentsPostRequestBodyPaymentMethodDataMbWay? mbWay;

  ///  The metadata property
  PaymentIntentsPostRequestBodyPaymentMethodDataMetadata? metadata;

  ///  The mobilepay property
  PaymentIntentsPostRequestBodyPaymentMethodDataMobilepay? mobilepay;

  ///  The multibanco property
  PaymentIntentsPostRequestBodyPaymentMethodDataMultibanco? multibanco;

  ///  The naver_pay property
  PaymentIntentsPostRequestBodyPaymentMethodDataNaverPay? naverPay;

  ///  The nz_bank_account property
  PaymentIntentsPostRequestBodyPaymentMethodDataNzBankAccount? nzBankAccount;

  ///  The oxxo property
  PaymentIntentsPostRequestBodyPaymentMethodDataOxxo? oxxo;

  ///  The p24 property
  PaymentIntentsPostRequestBodyPaymentMethodDataP24? p24;

  ///  The pay_by_bank property
  PaymentIntentsPostRequestBodyPaymentMethodDataPayByBank? payByBank;

  ///  The payco property
  PaymentIntentsPostRequestBodyPaymentMethodDataPayco? payco;

  ///  The paynow property
  PaymentIntentsPostRequestBodyPaymentMethodDataPaynow? paynow;

  ///  The paypal property
  PaymentIntentsPostRequestBodyPaymentMethodDataPaypal? paypal;

  ///  The payto property
  PaymentIntentsPostRequestBodyPaymentMethodDataPayto? payto;

  ///  The pix property
  PaymentIntentsPostRequestBodyPaymentMethodDataPix? pix;

  ///  The promptpay property
  PaymentIntentsPostRequestBodyPaymentMethodDataPromptpay? promptpay;

  ///  The radar_options property
  PaymentIntentsPostRequestBodyPaymentMethodDataRadarOptions? radarOptions;

  ///  The revolut_pay property
  PaymentIntentsPostRequestBodyPaymentMethodDataRevolutPay? revolutPay;

  ///  The samsung_pay property
  PaymentIntentsPostRequestBodyPaymentMethodDataSamsungPay? samsungPay;

  ///  The satispay property
  PaymentIntentsPostRequestBodyPaymentMethodDataSatispay? satispay;

  ///  The sepa_debit property
  PaymentIntentsPostRequestBodyPaymentMethodDataSepaDebit? sepaDebit;

  ///  The sofort property
  PaymentIntentsPostRequestBodyPaymentMethodDataSofort? sofort;

  ///  The swish property
  PaymentIntentsPostRequestBodyPaymentMethodDataSwish? swish;

  ///  The twint property
  PaymentIntentsPostRequestBodyPaymentMethodDataTwint? twint;

  ///  The type property
  PaymentIntentsPostRequestBodyPaymentMethodDataType? type_;

  ///  The us_bank_account property
  PaymentIntentsPostRequestBodyPaymentMethodDataUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  PaymentIntentsPostRequestBodyPaymentMethodDataWechatPay? wechatPay;

  ///  The zip property
  PaymentIntentsPostRequestBodyPaymentMethodDataZip? zip;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodData] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit>(
        PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataAffirm>(
            PaymentIntentsPostRequestBodyPaymentMethodDataAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataAlipay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataAlipay
                .createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataAllowRedisplay>(
            (stringValue) =>
                PaymentIntentsPostRequestBodyPaymentMethodDataAllowRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataAlma>(
            PaymentIntentsPostRequestBodyPaymentMethodDataAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataAmazonPay>(
        PaymentIntentsPostRequestBodyPaymentMethodDataAmazonPay
            .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataAuBecsDebit>(
            PaymentIntentsPostRequestBodyPaymentMethodDataAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBacsDebit>(
        PaymentIntentsPostRequestBodyPaymentMethodDataBacsDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBancontact>(
        PaymentIntentsPostRequestBodyPaymentMethodDataBancontact
            .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataBillie>(
            PaymentIntentsPostRequestBodyPaymentMethodDataBillie
                .createFromDiscriminatorValue);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails>(
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataBlik>(
            PaymentIntentsPostRequestBodyPaymentMethodDataBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataBoleto>(
            PaymentIntentsPostRequestBodyPaymentMethodDataBoleto
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataCashapp>(
            PaymentIntentsPostRequestBodyPaymentMethodDataCashapp
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataCrypto>(
            PaymentIntentsPostRequestBodyPaymentMethodDataCrypto
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataCustomerBalance>(
            PaymentIntentsPostRequestBodyPaymentMethodDataCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataEps>(
            PaymentIntentsPostRequestBodyPaymentMethodDataEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataFpx>(
            PaymentIntentsPostRequestBodyPaymentMethodDataFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataGiropay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataGiropay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataGrabpay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataIdeal>(
            PaymentIntentsPostRequestBodyPaymentMethodDataIdeal
                .createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataInteracPresent>(
            PaymentIntentsPostRequestBodyPaymentMethodDataInteracPresent
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataKakaoPay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataKlarna>(
            PaymentIntentsPostRequestBodyPaymentMethodDataKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataKonbini>(
            PaymentIntentsPostRequestBodyPaymentMethodDataKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataKrCard>(
            PaymentIntentsPostRequestBodyPaymentMethodDataKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataLink>(
            PaymentIntentsPostRequestBodyPaymentMethodDataLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataMbWay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataMbWay
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataMetadata>(
            PaymentIntentsPostRequestBodyPaymentMethodDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataMobilepay>(
        PaymentIntentsPostRequestBodyPaymentMethodDataMobilepay
            .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataMultibanco>(
        PaymentIntentsPostRequestBodyPaymentMethodDataMultibanco
            .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataNaverPay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataNzBankAccount>(
            PaymentIntentsPostRequestBodyPaymentMethodDataNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataOxxo>(
            PaymentIntentsPostRequestBodyPaymentMethodDataOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataP24>(
            PaymentIntentsPostRequestBodyPaymentMethodDataP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataPayByBank>(
        PaymentIntentsPostRequestBodyPaymentMethodDataPayByBank
            .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPayco>(
            PaymentIntentsPostRequestBodyPaymentMethodDataPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPaynow>(
            PaymentIntentsPostRequestBodyPaymentMethodDataPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPaypal>(
            PaymentIntentsPostRequestBodyPaymentMethodDataPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPayto>(
            PaymentIntentsPostRequestBodyPaymentMethodDataPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPix>(
            PaymentIntentsPostRequestBodyPaymentMethodDataPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataPromptpay>(
        PaymentIntentsPostRequestBodyPaymentMethodDataPromptpay
            .createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataRadarOptions>(
            PaymentIntentsPostRequestBodyPaymentMethodDataRadarOptions
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataRevolutPay>(
        PaymentIntentsPostRequestBodyPaymentMethodDataRevolutPay
            .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataSamsungPay>(
        PaymentIntentsPostRequestBodyPaymentMethodDataSamsungPay
            .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataSatispay>(
            PaymentIntentsPostRequestBodyPaymentMethodDataSatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataSepaDebit>(
        PaymentIntentsPostRequestBodyPaymentMethodDataSepaDebit
            .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataSofort>(
            PaymentIntentsPostRequestBodyPaymentMethodDataSofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataSwish>(
            PaymentIntentsPostRequestBodyPaymentMethodDataSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataTwint>(
            PaymentIntentsPostRequestBodyPaymentMethodDataTwint
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentIntentsPostRequestBodyPaymentMethodDataType>(
            (stringValue) => PaymentIntentsPostRequestBodyPaymentMethodDataType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodDataUsBankAccount>(
            PaymentIntentsPostRequestBodyPaymentMethodDataUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataWechatPay>(
        PaymentIntentsPostRequestBodyPaymentMethodDataWechatPay
            .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataZip>(
            PaymentIntentsPostRequestBodyPaymentMethodDataZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataAcssDebit>(
        'acss_debit', acssDebit);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataAffirm>(
            'affirm', affirm);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataAlipay>(
            'alipay', alipay);
    writer.writeEnumValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataAlma>(
        'alma', alma);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBancontact>(
        'bancontact', bancontact);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataBillie>(
            'billie', billie);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataBlik>(
        'blik', blik);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataBoleto>(
            'boleto', boleto);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataCashapp>(
        'cashapp', cashapp);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataCrypto>(
            'crypto', crypto);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataEps>(
        'eps', eps);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataFpx>(
        'fpx', fpx);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataGrabpay>(
        'grabpay', grabpay);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataIdeal>(
            'ideal', ideal);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataKakaoPay>(
        'kakao_pay', kakaoPay);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataKlarna>(
            'klarna', klarna);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataKonbini>(
        'konbini', konbini);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataKrCard>(
            'kr_card', krCard);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataLink>(
        'link', link);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataMbWay>(
            'mb_way', mbWay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataP24>(
        'p24', p24);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataPayByBank>(
        'pay_by_bank', payByBank);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPayco>(
            'payco', payco);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPaynow>(
            'paynow', paynow);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPaypal>(
            'paypal', paypal);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPayto>(
            'payto', payto);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataPix>(
        'pix', pix);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataRadarOptions>(
        'radar_options', radarOptions);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataSatispay>(
        'satispay', satispay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataSepaDebit>(
        'sepa_debit', sepaDebit);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataSofort>(
            'sofort', sofort);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataSwish>(
            'swish', swish);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataTwint>(
            'twint', twint);
    writer.writeEnumValue<PaymentIntentsPostRequestBodyPaymentMethodDataType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodDataWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodDataZip>(
        'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
