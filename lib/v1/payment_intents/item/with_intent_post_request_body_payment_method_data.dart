// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_data_acss_debit.dart';
import './with_intent_post_request_body_payment_method_data_affirm.dart';
import './with_intent_post_request_body_payment_method_data_afterpay_clearpay.dart';
import './with_intent_post_request_body_payment_method_data_alipay.dart';
import './with_intent_post_request_body_payment_method_data_allow_redisplay.dart';
import './with_intent_post_request_body_payment_method_data_alma.dart';
import './with_intent_post_request_body_payment_method_data_amazon_pay.dart';
import './with_intent_post_request_body_payment_method_data_au_becs_debit.dart';
import './with_intent_post_request_body_payment_method_data_bacs_debit.dart';
import './with_intent_post_request_body_payment_method_data_bancontact.dart';
import './with_intent_post_request_body_payment_method_data_billie.dart';
import './with_intent_post_request_body_payment_method_data_billing_details.dart';
import './with_intent_post_request_body_payment_method_data_blik.dart';
import './with_intent_post_request_body_payment_method_data_boleto.dart';
import './with_intent_post_request_body_payment_method_data_cashapp.dart';
import './with_intent_post_request_body_payment_method_data_crypto.dart';
import './with_intent_post_request_body_payment_method_data_customer_balance.dart';
import './with_intent_post_request_body_payment_method_data_eps.dart';
import './with_intent_post_request_body_payment_method_data_fpx.dart';
import './with_intent_post_request_body_payment_method_data_giropay.dart';
import './with_intent_post_request_body_payment_method_data_grabpay.dart';
import './with_intent_post_request_body_payment_method_data_ideal.dart';
import './with_intent_post_request_body_payment_method_data_interac_present.dart';
import './with_intent_post_request_body_payment_method_data_kakao_pay.dart';
import './with_intent_post_request_body_payment_method_data_klarna.dart';
import './with_intent_post_request_body_payment_method_data_konbini.dart';
import './with_intent_post_request_body_payment_method_data_kr_card.dart';
import './with_intent_post_request_body_payment_method_data_link.dart';
import './with_intent_post_request_body_payment_method_data_mb_way.dart';
import './with_intent_post_request_body_payment_method_data_metadata.dart';
import './with_intent_post_request_body_payment_method_data_mobilepay.dart';
import './with_intent_post_request_body_payment_method_data_multibanco.dart';
import './with_intent_post_request_body_payment_method_data_naver_pay.dart';
import './with_intent_post_request_body_payment_method_data_nz_bank_account.dart';
import './with_intent_post_request_body_payment_method_data_oxxo.dart';
import './with_intent_post_request_body_payment_method_data_p24.dart';
import './with_intent_post_request_body_payment_method_data_pay_by_bank.dart';
import './with_intent_post_request_body_payment_method_data_payco.dart';
import './with_intent_post_request_body_payment_method_data_paynow.dart';
import './with_intent_post_request_body_payment_method_data_paypal.dart';
import './with_intent_post_request_body_payment_method_data_payto.dart';
import './with_intent_post_request_body_payment_method_data_pix.dart';
import './with_intent_post_request_body_payment_method_data_promptpay.dart';
import './with_intent_post_request_body_payment_method_data_radar_options.dart';
import './with_intent_post_request_body_payment_method_data_revolut_pay.dart';
import './with_intent_post_request_body_payment_method_data_samsung_pay.dart';
import './with_intent_post_request_body_payment_method_data_satispay.dart';
import './with_intent_post_request_body_payment_method_data_sepa_debit.dart';
import './with_intent_post_request_body_payment_method_data_sofort.dart';
import './with_intent_post_request_body_payment_method_data_swish.dart';
import './with_intent_post_request_body_payment_method_data_twint.dart';
import './with_intent_post_request_body_payment_method_data_type.dart';
import './with_intent_post_request_body_payment_method_data_us_bank_account.dart';
import './with_intent_post_request_body_payment_method_data_wechat_pay.dart';
import './with_intent_post_request_body_payment_method_data_zip.dart';

/// auto generated
/// If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appearin the [payment_method](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-payment_method)property on the PaymentIntent.
class WithIntentPostRequestBodyPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  WithIntentPostRequestBodyPaymentMethodDataAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  WithIntentPostRequestBodyPaymentMethodDataAffirm? affirm;

  ///  The afterpay_clearpay property
  WithIntentPostRequestBodyPaymentMethodDataAfterpayClearpay? afterpayClearpay;

  ///  The alipay property
  WithIntentPostRequestBodyPaymentMethodDataAlipay? alipay;

  ///  The allow_redisplay property
  WithIntentPostRequestBodyPaymentMethodDataAllowRedisplay? allowRedisplay;

  ///  The alma property
  WithIntentPostRequestBodyPaymentMethodDataAlma? alma;

  ///  The amazon_pay property
  WithIntentPostRequestBodyPaymentMethodDataAmazonPay? amazonPay;

  ///  The au_becs_debit property
  WithIntentPostRequestBodyPaymentMethodDataAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  WithIntentPostRequestBodyPaymentMethodDataBacsDebit? bacsDebit;

  ///  The bancontact property
  WithIntentPostRequestBodyPaymentMethodDataBancontact? bancontact;

  ///  The billie property
  WithIntentPostRequestBodyPaymentMethodDataBillie? billie;

  ///  The billing_details property
  WithIntentPostRequestBodyPaymentMethodDataBillingDetails? billingDetails;

  ///  The blik property
  WithIntentPostRequestBodyPaymentMethodDataBlik? blik;

  ///  The boleto property
  WithIntentPostRequestBodyPaymentMethodDataBoleto? boleto;

  ///  The cashapp property
  WithIntentPostRequestBodyPaymentMethodDataCashapp? cashapp;

  ///  The crypto property
  WithIntentPostRequestBodyPaymentMethodDataCrypto? crypto;

  ///  The customer_balance property
  WithIntentPostRequestBodyPaymentMethodDataCustomerBalance? customerBalance;

  ///  The eps property
  WithIntentPostRequestBodyPaymentMethodDataEps? eps;

  ///  The fpx property
  WithIntentPostRequestBodyPaymentMethodDataFpx? fpx;

  ///  The giropay property
  WithIntentPostRequestBodyPaymentMethodDataGiropay? giropay;

  ///  The grabpay property
  WithIntentPostRequestBodyPaymentMethodDataGrabpay? grabpay;

  ///  The ideal property
  WithIntentPostRequestBodyPaymentMethodDataIdeal? ideal;

  ///  The interac_present property
  WithIntentPostRequestBodyPaymentMethodDataInteracPresent? interacPresent;

  ///  The kakao_pay property
  WithIntentPostRequestBodyPaymentMethodDataKakaoPay? kakaoPay;

  ///  The klarna property
  WithIntentPostRequestBodyPaymentMethodDataKlarna? klarna;

  ///  The konbini property
  WithIntentPostRequestBodyPaymentMethodDataKonbini? konbini;

  ///  The kr_card property
  WithIntentPostRequestBodyPaymentMethodDataKrCard? krCard;

  ///  The link property
  WithIntentPostRequestBodyPaymentMethodDataLink? link;

  ///  The mb_way property
  WithIntentPostRequestBodyPaymentMethodDataMbWay? mbWay;

  ///  The metadata property
  WithIntentPostRequestBodyPaymentMethodDataMetadata? metadata;

  ///  The mobilepay property
  WithIntentPostRequestBodyPaymentMethodDataMobilepay? mobilepay;

  ///  The multibanco property
  WithIntentPostRequestBodyPaymentMethodDataMultibanco? multibanco;

  ///  The naver_pay property
  WithIntentPostRequestBodyPaymentMethodDataNaverPay? naverPay;

  ///  The nz_bank_account property
  WithIntentPostRequestBodyPaymentMethodDataNzBankAccount? nzBankAccount;

  ///  The oxxo property
  WithIntentPostRequestBodyPaymentMethodDataOxxo? oxxo;

  ///  The p24 property
  WithIntentPostRequestBodyPaymentMethodDataP24? p24;

  ///  The pay_by_bank property
  WithIntentPostRequestBodyPaymentMethodDataPayByBank? payByBank;

  ///  The payco property
  WithIntentPostRequestBodyPaymentMethodDataPayco? payco;

  ///  The paynow property
  WithIntentPostRequestBodyPaymentMethodDataPaynow? paynow;

  ///  The paypal property
  WithIntentPostRequestBodyPaymentMethodDataPaypal? paypal;

  ///  The payto property
  WithIntentPostRequestBodyPaymentMethodDataPayto? payto;

  ///  The pix property
  WithIntentPostRequestBodyPaymentMethodDataPix? pix;

  ///  The promptpay property
  WithIntentPostRequestBodyPaymentMethodDataPromptpay? promptpay;

  ///  The radar_options property
  WithIntentPostRequestBodyPaymentMethodDataRadarOptions? radarOptions;

  ///  The revolut_pay property
  WithIntentPostRequestBodyPaymentMethodDataRevolutPay? revolutPay;

  ///  The samsung_pay property
  WithIntentPostRequestBodyPaymentMethodDataSamsungPay? samsungPay;

  ///  The satispay property
  WithIntentPostRequestBodyPaymentMethodDataSatispay? satispay;

  ///  The sepa_debit property
  WithIntentPostRequestBodyPaymentMethodDataSepaDebit? sepaDebit;

  ///  The sofort property
  WithIntentPostRequestBodyPaymentMethodDataSofort? sofort;

  ///  The swish property
  WithIntentPostRequestBodyPaymentMethodDataSwish? swish;

  ///  The twint property
  WithIntentPostRequestBodyPaymentMethodDataTwint? twint;

  ///  The type property
  WithIntentPostRequestBodyPaymentMethodDataType? type_;

  ///  The us_bank_account property
  WithIntentPostRequestBodyPaymentMethodDataUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  WithIntentPostRequestBodyPaymentMethodDataWechatPay? wechatPay;

  ///  The zip property
  WithIntentPostRequestBodyPaymentMethodDataZip? zip;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodData] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataAcssDebit>(
            WithIntentPostRequestBodyPaymentMethodDataAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataAffirm>(
            WithIntentPostRequestBodyPaymentMethodDataAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodDataAfterpayClearpay>(
            WithIntentPostRequestBodyPaymentMethodDataAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataAlipay>(
            WithIntentPostRequestBodyPaymentMethodDataAlipay
                .createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay = node
        .getEnumValue<WithIntentPostRequestBodyPaymentMethodDataAllowRedisplay>(
            (stringValue) =>
                WithIntentPostRequestBodyPaymentMethodDataAllowRedisplay.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataAlma>(
            WithIntentPostRequestBodyPaymentMethodDataAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataAmazonPay>(
            WithIntentPostRequestBodyPaymentMethodDataAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataAuBecsDebit>(
            WithIntentPostRequestBodyPaymentMethodDataAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataBacsDebit>(
            WithIntentPostRequestBodyPaymentMethodDataBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataBancontact>(
            WithIntentPostRequestBodyPaymentMethodDataBancontact
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataBillie>(
            WithIntentPostRequestBodyPaymentMethodDataBillie
                .createFromDiscriminatorValue);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodDataBillingDetails>(
            WithIntentPostRequestBodyPaymentMethodDataBillingDetails
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataBlik>(
            WithIntentPostRequestBodyPaymentMethodDataBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataBoleto>(
            WithIntentPostRequestBodyPaymentMethodDataBoleto
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataCashapp>(
            WithIntentPostRequestBodyPaymentMethodDataCashapp
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataCrypto>(
            WithIntentPostRequestBodyPaymentMethodDataCrypto
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodDataCustomerBalance>(
            WithIntentPostRequestBodyPaymentMethodDataCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataEps>(
            WithIntentPostRequestBodyPaymentMethodDataEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataFpx>(
            WithIntentPostRequestBodyPaymentMethodDataFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataGiropay>(
            WithIntentPostRequestBodyPaymentMethodDataGiropay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataGrabpay>(
            WithIntentPostRequestBodyPaymentMethodDataGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataIdeal>(
            WithIntentPostRequestBodyPaymentMethodDataIdeal
                .createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodDataInteracPresent>(
            WithIntentPostRequestBodyPaymentMethodDataInteracPresent
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataKakaoPay>(
            WithIntentPostRequestBodyPaymentMethodDataKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataKlarna>(
            WithIntentPostRequestBodyPaymentMethodDataKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataKonbini>(
            WithIntentPostRequestBodyPaymentMethodDataKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataKrCard>(
            WithIntentPostRequestBodyPaymentMethodDataKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataLink>(
            WithIntentPostRequestBodyPaymentMethodDataLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataMbWay>(
            WithIntentPostRequestBodyPaymentMethodDataMbWay
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataMetadata>(
            WithIntentPostRequestBodyPaymentMethodDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataMobilepay>(
            WithIntentPostRequestBodyPaymentMethodDataMobilepay
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataMultibanco>(
            WithIntentPostRequestBodyPaymentMethodDataMultibanco
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataNaverPay>(
            WithIntentPostRequestBodyPaymentMethodDataNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodDataNzBankAccount>(
            WithIntentPostRequestBodyPaymentMethodDataNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataOxxo>(
            WithIntentPostRequestBodyPaymentMethodDataOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataP24>(
            WithIntentPostRequestBodyPaymentMethodDataP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataPayByBank>(
            WithIntentPostRequestBodyPaymentMethodDataPayByBank
                .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataPayco>(
            WithIntentPostRequestBodyPaymentMethodDataPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataPaynow>(
            WithIntentPostRequestBodyPaymentMethodDataPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataPaypal>(
            WithIntentPostRequestBodyPaymentMethodDataPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataPayto>(
            WithIntentPostRequestBodyPaymentMethodDataPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataPix>(
            WithIntentPostRequestBodyPaymentMethodDataPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataPromptpay>(
            WithIntentPostRequestBodyPaymentMethodDataPromptpay
                .createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataRadarOptions>(
            WithIntentPostRequestBodyPaymentMethodDataRadarOptions
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataRevolutPay>(
            WithIntentPostRequestBodyPaymentMethodDataRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataSamsungPay>(
            WithIntentPostRequestBodyPaymentMethodDataSamsungPay
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataSatispay>(
            WithIntentPostRequestBodyPaymentMethodDataSatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataSepaDebit>(
            WithIntentPostRequestBodyPaymentMethodDataSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataSofort>(
            WithIntentPostRequestBodyPaymentMethodDataSofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataSwish>(
            WithIntentPostRequestBodyPaymentMethodDataSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataTwint>(
            WithIntentPostRequestBodyPaymentMethodDataTwint
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<WithIntentPostRequestBodyPaymentMethodDataType>(
            (stringValue) => WithIntentPostRequestBodyPaymentMethodDataType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodDataUsBankAccount>(
            WithIntentPostRequestBodyPaymentMethodDataUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodDataWechatPay>(
            WithIntentPostRequestBodyPaymentMethodDataWechatPay
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodDataZip>(
            WithIntentPostRequestBodyPaymentMethodDataZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataAcssDebit>(
            'acss_debit', acssDebit);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataAlipay>(
        'alipay', alipay);
    writer.writeEnumValue<
            WithIntentPostRequestBodyPaymentMethodDataAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataAlma>(
        'alma', alma);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataAmazonPay>(
            'amazon_pay', amazonPay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataBacsDebit>(
            'bacs_debit', bacsDebit);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataBancontact>(
            'bancontact', bancontact);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataBillie>(
        'billie', billie);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataBlik>(
        'blik', blik);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataEps>(
        'eps', eps);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataFpx>(
        'fpx', fpx);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataIdeal>(
        'ideal', ideal);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataLink>(
        'link', link);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataMbWay>(
        'mb_way', mbWay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataMetadata>(
        'metadata', metadata);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataMobilepay>(
            'mobilepay', mobilepay);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataMultibanco>(
            'multibanco', multibanco);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataP24>(
        'p24', p24);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataPayByBank>(
            'pay_by_bank', payByBank);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataPayco>(
        'payco', payco);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataPayto>(
        'payto', payto);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataPix>(
        'pix', pix);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataPromptpay>(
            'promptpay', promptpay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataRadarOptions>(
        'radar_options', radarOptions);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataRevolutPay>(
            'revolut_pay', revolutPay);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataSamsungPay>(
            'samsung_pay', samsungPay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataSatispay>(
        'satispay', satispay);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataSepaDebit>(
            'sepa_debit', sepaDebit);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataSofort>(
        'sofort', sofort);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataSwish>(
        'swish', swish);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataTwint>(
        'twint', twint);
    writer.writeEnumValue<WithIntentPostRequestBodyPaymentMethodDataType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodDataUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataWechatPay>(
            'wechat_pay', wechatPay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodDataZip>(
        'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
