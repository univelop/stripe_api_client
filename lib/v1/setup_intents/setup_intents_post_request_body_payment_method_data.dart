// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_data_acss_debit.dart';
import './setup_intents_post_request_body_payment_method_data_affirm.dart';
import './setup_intents_post_request_body_payment_method_data_afterpay_clearpay.dart';
import './setup_intents_post_request_body_payment_method_data_alipay.dart';
import './setup_intents_post_request_body_payment_method_data_allow_redisplay.dart';
import './setup_intents_post_request_body_payment_method_data_alma.dart';
import './setup_intents_post_request_body_payment_method_data_amazon_pay.dart';
import './setup_intents_post_request_body_payment_method_data_au_becs_debit.dart';
import './setup_intents_post_request_body_payment_method_data_bacs_debit.dart';
import './setup_intents_post_request_body_payment_method_data_bancontact.dart';
import './setup_intents_post_request_body_payment_method_data_billie.dart';
import './setup_intents_post_request_body_payment_method_data_billing_details.dart';
import './setup_intents_post_request_body_payment_method_data_blik.dart';
import './setup_intents_post_request_body_payment_method_data_boleto.dart';
import './setup_intents_post_request_body_payment_method_data_cashapp.dart';
import './setup_intents_post_request_body_payment_method_data_crypto.dart';
import './setup_intents_post_request_body_payment_method_data_customer_balance.dart';
import './setup_intents_post_request_body_payment_method_data_eps.dart';
import './setup_intents_post_request_body_payment_method_data_fpx.dart';
import './setup_intents_post_request_body_payment_method_data_giropay.dart';
import './setup_intents_post_request_body_payment_method_data_grabpay.dart';
import './setup_intents_post_request_body_payment_method_data_ideal.dart';
import './setup_intents_post_request_body_payment_method_data_interac_present.dart';
import './setup_intents_post_request_body_payment_method_data_kakao_pay.dart';
import './setup_intents_post_request_body_payment_method_data_klarna.dart';
import './setup_intents_post_request_body_payment_method_data_konbini.dart';
import './setup_intents_post_request_body_payment_method_data_kr_card.dart';
import './setup_intents_post_request_body_payment_method_data_link.dart';
import './setup_intents_post_request_body_payment_method_data_mb_way.dart';
import './setup_intents_post_request_body_payment_method_data_metadata.dart';
import './setup_intents_post_request_body_payment_method_data_mobilepay.dart';
import './setup_intents_post_request_body_payment_method_data_multibanco.dart';
import './setup_intents_post_request_body_payment_method_data_naver_pay.dart';
import './setup_intents_post_request_body_payment_method_data_nz_bank_account.dart';
import './setup_intents_post_request_body_payment_method_data_oxxo.dart';
import './setup_intents_post_request_body_payment_method_data_p24.dart';
import './setup_intents_post_request_body_payment_method_data_pay_by_bank.dart';
import './setup_intents_post_request_body_payment_method_data_payco.dart';
import './setup_intents_post_request_body_payment_method_data_paynow.dart';
import './setup_intents_post_request_body_payment_method_data_paypal.dart';
import './setup_intents_post_request_body_payment_method_data_payto.dart';
import './setup_intents_post_request_body_payment_method_data_pix.dart';
import './setup_intents_post_request_body_payment_method_data_promptpay.dart';
import './setup_intents_post_request_body_payment_method_data_radar_options.dart';
import './setup_intents_post_request_body_payment_method_data_revolut_pay.dart';
import './setup_intents_post_request_body_payment_method_data_samsung_pay.dart';
import './setup_intents_post_request_body_payment_method_data_satispay.dart';
import './setup_intents_post_request_body_payment_method_data_sepa_debit.dart';
import './setup_intents_post_request_body_payment_method_data_sofort.dart';
import './setup_intents_post_request_body_payment_method_data_swish.dart';
import './setup_intents_post_request_body_payment_method_data_twint.dart';
import './setup_intents_post_request_body_payment_method_data_type.dart';
import './setup_intents_post_request_body_payment_method_data_us_bank_account.dart';
import './setup_intents_post_request_body_payment_method_data_wechat_pay.dart';
import './setup_intents_post_request_body_payment_method_data_zip.dart';

/// auto generated
/// When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://docs.stripe.com/api/setup_intents/object#setup_intent_object-payment_method)value in the SetupIntent.
class SetupIntentsPostRequestBodyPaymentMethodData
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SetupIntentsPostRequestBodyPaymentMethodDataAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  SetupIntentsPostRequestBodyPaymentMethodDataAffirm? affirm;

  ///  The afterpay_clearpay property
  SetupIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay?
      afterpayClearpay;

  ///  The alipay property
  SetupIntentsPostRequestBodyPaymentMethodDataAlipay? alipay;

  ///  The allow_redisplay property
  SetupIntentsPostRequestBodyPaymentMethodDataAllowRedisplay? allowRedisplay;

  ///  The alma property
  SetupIntentsPostRequestBodyPaymentMethodDataAlma? alma;

  ///  The amazon_pay property
  SetupIntentsPostRequestBodyPaymentMethodDataAmazonPay? amazonPay;

  ///  The au_becs_debit property
  SetupIntentsPostRequestBodyPaymentMethodDataAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  SetupIntentsPostRequestBodyPaymentMethodDataBacsDebit? bacsDebit;

  ///  The bancontact property
  SetupIntentsPostRequestBodyPaymentMethodDataBancontact? bancontact;

  ///  The billie property
  SetupIntentsPostRequestBodyPaymentMethodDataBillie? billie;

  ///  The billing_details property
  SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails? billingDetails;

  ///  The blik property
  SetupIntentsPostRequestBodyPaymentMethodDataBlik? blik;

  ///  The boleto property
  SetupIntentsPostRequestBodyPaymentMethodDataBoleto? boleto;

  ///  The cashapp property
  SetupIntentsPostRequestBodyPaymentMethodDataCashapp? cashapp;

  ///  The crypto property
  SetupIntentsPostRequestBodyPaymentMethodDataCrypto? crypto;

  ///  The customer_balance property
  SetupIntentsPostRequestBodyPaymentMethodDataCustomerBalance? customerBalance;

  ///  The eps property
  SetupIntentsPostRequestBodyPaymentMethodDataEps? eps;

  ///  The fpx property
  SetupIntentsPostRequestBodyPaymentMethodDataFpx? fpx;

  ///  The giropay property
  SetupIntentsPostRequestBodyPaymentMethodDataGiropay? giropay;

  ///  The grabpay property
  SetupIntentsPostRequestBodyPaymentMethodDataGrabpay? grabpay;

  ///  The ideal property
  SetupIntentsPostRequestBodyPaymentMethodDataIdeal? ideal;

  ///  The interac_present property
  SetupIntentsPostRequestBodyPaymentMethodDataInteracPresent? interacPresent;

  ///  The kakao_pay property
  SetupIntentsPostRequestBodyPaymentMethodDataKakaoPay? kakaoPay;

  ///  The klarna property
  SetupIntentsPostRequestBodyPaymentMethodDataKlarna? klarna;

  ///  The konbini property
  SetupIntentsPostRequestBodyPaymentMethodDataKonbini? konbini;

  ///  The kr_card property
  SetupIntentsPostRequestBodyPaymentMethodDataKrCard? krCard;

  ///  The link property
  SetupIntentsPostRequestBodyPaymentMethodDataLink? link;

  ///  The mb_way property
  SetupIntentsPostRequestBodyPaymentMethodDataMbWay? mbWay;

  ///  The metadata property
  SetupIntentsPostRequestBodyPaymentMethodDataMetadata? metadata;

  ///  The mobilepay property
  SetupIntentsPostRequestBodyPaymentMethodDataMobilepay? mobilepay;

  ///  The multibanco property
  SetupIntentsPostRequestBodyPaymentMethodDataMultibanco? multibanco;

  ///  The naver_pay property
  SetupIntentsPostRequestBodyPaymentMethodDataNaverPay? naverPay;

  ///  The nz_bank_account property
  SetupIntentsPostRequestBodyPaymentMethodDataNzBankAccount? nzBankAccount;

  ///  The oxxo property
  SetupIntentsPostRequestBodyPaymentMethodDataOxxo? oxxo;

  ///  The p24 property
  SetupIntentsPostRequestBodyPaymentMethodDataP24? p24;

  ///  The pay_by_bank property
  SetupIntentsPostRequestBodyPaymentMethodDataPayByBank? payByBank;

  ///  The payco property
  SetupIntentsPostRequestBodyPaymentMethodDataPayco? payco;

  ///  The paynow property
  SetupIntentsPostRequestBodyPaymentMethodDataPaynow? paynow;

  ///  The paypal property
  SetupIntentsPostRequestBodyPaymentMethodDataPaypal? paypal;

  ///  The payto property
  SetupIntentsPostRequestBodyPaymentMethodDataPayto? payto;

  ///  The pix property
  SetupIntentsPostRequestBodyPaymentMethodDataPix? pix;

  ///  The promptpay property
  SetupIntentsPostRequestBodyPaymentMethodDataPromptpay? promptpay;

  ///  The radar_options property
  SetupIntentsPostRequestBodyPaymentMethodDataRadarOptions? radarOptions;

  ///  The revolut_pay property
  SetupIntentsPostRequestBodyPaymentMethodDataRevolutPay? revolutPay;

  ///  The samsung_pay property
  SetupIntentsPostRequestBodyPaymentMethodDataSamsungPay? samsungPay;

  ///  The satispay property
  SetupIntentsPostRequestBodyPaymentMethodDataSatispay? satispay;

  ///  The sepa_debit property
  SetupIntentsPostRequestBodyPaymentMethodDataSepaDebit? sepaDebit;

  ///  The sofort property
  SetupIntentsPostRequestBodyPaymentMethodDataSofort? sofort;

  ///  The swish property
  SetupIntentsPostRequestBodyPaymentMethodDataSwish? swish;

  ///  The twint property
  SetupIntentsPostRequestBodyPaymentMethodDataTwint? twint;

  ///  The type property
  SetupIntentsPostRequestBodyPaymentMethodDataType? type_;

  ///  The us_bank_account property
  SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  SetupIntentsPostRequestBodyPaymentMethodDataWechatPay? wechatPay;

  ///  The zip property
  SetupIntentsPostRequestBodyPaymentMethodDataZip? zip;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodData] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodData() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodData
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodData();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAcssDebit>(
            SetupIntentsPostRequestBodyPaymentMethodDataAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAffirm>(
            SetupIntentsPostRequestBodyPaymentMethodDataAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay>(
            SetupIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAlipay>(
            SetupIntentsPostRequestBodyPaymentMethodDataAlipay
                .createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<
                SetupIntentsPostRequestBodyPaymentMethodDataAllowRedisplay>(
            (stringValue) =>
                SetupIntentsPostRequestBodyPaymentMethodDataAllowRedisplay
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAlma>(
            SetupIntentsPostRequestBodyPaymentMethodDataAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAmazonPay>(
            SetupIntentsPostRequestBodyPaymentMethodDataAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataAuBecsDebit>(
            SetupIntentsPostRequestBodyPaymentMethodDataAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBacsDebit>(
            SetupIntentsPostRequestBodyPaymentMethodDataBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBancontact>(
            SetupIntentsPostRequestBodyPaymentMethodDataBancontact
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBillie>(
            SetupIntentsPostRequestBodyPaymentMethodDataBillie
                .createFromDiscriminatorValue);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails>(
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBlik>(
            SetupIntentsPostRequestBodyPaymentMethodDataBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBoleto>(
            SetupIntentsPostRequestBodyPaymentMethodDataBoleto
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataCashapp>(
            SetupIntentsPostRequestBodyPaymentMethodDataCashapp
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataCrypto>(
            SetupIntentsPostRequestBodyPaymentMethodDataCrypto
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataCustomerBalance>(
            SetupIntentsPostRequestBodyPaymentMethodDataCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataEps>(
            SetupIntentsPostRequestBodyPaymentMethodDataEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataFpx>(
            SetupIntentsPostRequestBodyPaymentMethodDataFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataGiropay>(
            SetupIntentsPostRequestBodyPaymentMethodDataGiropay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataGrabpay>(
            SetupIntentsPostRequestBodyPaymentMethodDataGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataIdeal>(
            SetupIntentsPostRequestBodyPaymentMethodDataIdeal
                .createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataInteracPresent>(
            SetupIntentsPostRequestBodyPaymentMethodDataInteracPresent
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKakaoPay>(
            SetupIntentsPostRequestBodyPaymentMethodDataKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKlarna>(
            SetupIntentsPostRequestBodyPaymentMethodDataKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKonbini>(
            SetupIntentsPostRequestBodyPaymentMethodDataKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKrCard>(
            SetupIntentsPostRequestBodyPaymentMethodDataKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataLink>(
            SetupIntentsPostRequestBodyPaymentMethodDataLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataMbWay>(
            SetupIntentsPostRequestBodyPaymentMethodDataMbWay
                .createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataMetadata>(
            SetupIntentsPostRequestBodyPaymentMethodDataMetadata
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataMobilepay>(
            SetupIntentsPostRequestBodyPaymentMethodDataMobilepay
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataMultibanco>(
            SetupIntentsPostRequestBodyPaymentMethodDataMultibanco
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataNaverPay>(
            SetupIntentsPostRequestBodyPaymentMethodDataNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataNzBankAccount>(
            SetupIntentsPostRequestBodyPaymentMethodDataNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataOxxo>(
            SetupIntentsPostRequestBodyPaymentMethodDataOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataP24>(
            SetupIntentsPostRequestBodyPaymentMethodDataP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPayByBank>(
            SetupIntentsPostRequestBodyPaymentMethodDataPayByBank
                .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPayco>(
            SetupIntentsPostRequestBodyPaymentMethodDataPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPaynow>(
            SetupIntentsPostRequestBodyPaymentMethodDataPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPaypal>(
            SetupIntentsPostRequestBodyPaymentMethodDataPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPayto>(
            SetupIntentsPostRequestBodyPaymentMethodDataPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPix>(
            SetupIntentsPostRequestBodyPaymentMethodDataPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPromptpay>(
            SetupIntentsPostRequestBodyPaymentMethodDataPromptpay
                .createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataRadarOptions>(
            SetupIntentsPostRequestBodyPaymentMethodDataRadarOptions
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataRevolutPay>(
            SetupIntentsPostRequestBodyPaymentMethodDataRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSamsungPay>(
            SetupIntentsPostRequestBodyPaymentMethodDataSamsungPay
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSatispay>(
            SetupIntentsPostRequestBodyPaymentMethodDataSatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSepaDebit>(
            SetupIntentsPostRequestBodyPaymentMethodDataSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSofort>(
            SetupIntentsPostRequestBodyPaymentMethodDataSofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSwish>(
            SetupIntentsPostRequestBodyPaymentMethodDataSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataTwint>(
            SetupIntentsPostRequestBodyPaymentMethodDataTwint
                .createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SetupIntentsPostRequestBodyPaymentMethodDataType>(
            (stringValue) => SetupIntentsPostRequestBodyPaymentMethodDataType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount>(
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataWechatPay>(
            SetupIntentsPostRequestBodyPaymentMethodDataWechatPay
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataZip>(
            SetupIntentsPostRequestBodyPaymentMethodDataZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAlipay>(
        'alipay', alipay);
    writer.writeEnumValue<
            SetupIntentsPostRequestBodyPaymentMethodDataAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataAlma>(
        'alma', alma);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBillie>(
        'billie', billie);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBlik>(
        'blik', blik);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataBoleto>(
        'boleto', boleto);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataCashapp>(
            'cashapp', cashapp);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataEps>(
        'eps', eps);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataFpx>(
        'fpx', fpx);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataGiropay>(
            'giropay', giropay);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataGrabpay>(
            'grabpay', grabpay);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataIdeal>(
        'ideal', ideal);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataInteracPresent>(
        'interac_present', interacPresent);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKakaoPay>(
            'kakao_pay', kakaoPay);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKlarna>(
        'klarna', klarna);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKonbini>(
            'konbini', konbini);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataLink>(
        'link', link);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataMbWay>(
        'mb_way', mbWay);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataMetadata>(
            'metadata', metadata);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataMultibanco>(
        'multibanco', multibanco);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataNaverPay>(
            'naver_pay', naverPay);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataP24>(
        'p24', p24);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataPayByBank>(
        'pay_by_bank', payByBank);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPayco>(
        'payco', payco);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPayto>(
        'payto', payto);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataPix>(
        'pix', pix);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataRadarOptions>(
        'radar_options', radarOptions);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataSamsungPay>(
        'samsung_pay', samsungPay);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSatispay>(
            'satispay', satispay);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSofort>(
        'sofort', sofort);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataSwish>(
        'swish', swish);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataTwint>(
        'twint', twint);
    writer.writeEnumValue<SetupIntentsPostRequestBodyPaymentMethodDataType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodDataWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodDataZip>(
        'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
