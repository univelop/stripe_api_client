// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intents_post_request_body_payment_method_options_acss_debit.dart';
import './payment_intents_post_request_body_payment_method_options_affirm.dart';
import './payment_intents_post_request_body_payment_method_options_afterpay_clearpay.dart';
import './payment_intents_post_request_body_payment_method_options_alipay.dart';
import './payment_intents_post_request_body_payment_method_options_alma.dart';
import './payment_intents_post_request_body_payment_method_options_amazon_pay.dart';
import './payment_intents_post_request_body_payment_method_options_au_becs_debit.dart';
import './payment_intents_post_request_body_payment_method_options_bacs_debit.dart';
import './payment_intents_post_request_body_payment_method_options_bancontact.dart';
import './payment_intents_post_request_body_payment_method_options_billie.dart';
import './payment_intents_post_request_body_payment_method_options_blik.dart';
import './payment_intents_post_request_body_payment_method_options_boleto.dart';
import './payment_intents_post_request_body_payment_method_options_card.dart';
import './payment_intents_post_request_body_payment_method_options_card_present.dart';
import './payment_intents_post_request_body_payment_method_options_cashapp.dart';
import './payment_intents_post_request_body_payment_method_options_crypto.dart';
import './payment_intents_post_request_body_payment_method_options_customer_balance.dart';
import './payment_intents_post_request_body_payment_method_options_eps.dart';
import './payment_intents_post_request_body_payment_method_options_fpx.dart';
import './payment_intents_post_request_body_payment_method_options_giropay.dart';
import './payment_intents_post_request_body_payment_method_options_grabpay.dart';
import './payment_intents_post_request_body_payment_method_options_ideal.dart';
import './payment_intents_post_request_body_payment_method_options_kakao_pay.dart';
import './payment_intents_post_request_body_payment_method_options_klarna.dart';
import './payment_intents_post_request_body_payment_method_options_konbini.dart';
import './payment_intents_post_request_body_payment_method_options_kr_card.dart';
import './payment_intents_post_request_body_payment_method_options_link.dart';
import './payment_intents_post_request_body_payment_method_options_mb_way.dart';
import './payment_intents_post_request_body_payment_method_options_mobilepay.dart';
import './payment_intents_post_request_body_payment_method_options_multibanco.dart';
import './payment_intents_post_request_body_payment_method_options_naver_pay.dart';
import './payment_intents_post_request_body_payment_method_options_nz_bank_account.dart';
import './payment_intents_post_request_body_payment_method_options_oxxo.dart';
import './payment_intents_post_request_body_payment_method_options_p24.dart';
import './payment_intents_post_request_body_payment_method_options_payco.dart';
import './payment_intents_post_request_body_payment_method_options_paynow.dart';
import './payment_intents_post_request_body_payment_method_options_paypal.dart';
import './payment_intents_post_request_body_payment_method_options_payto.dart';
import './payment_intents_post_request_body_payment_method_options_pix.dart';
import './payment_intents_post_request_body_payment_method_options_promptpay.dart';
import './payment_intents_post_request_body_payment_method_options_revolut_pay.dart';
import './payment_intents_post_request_body_payment_method_options_samsung_pay.dart';
import './payment_intents_post_request_body_payment_method_options_satispay.dart';
import './payment_intents_post_request_body_payment_method_options_sepa_debit.dart';
import './payment_intents_post_request_body_payment_method_options_sofort.dart';
import './payment_intents_post_request_body_payment_method_options_swish.dart';
import './payment_intents_post_request_body_payment_method_options_twint.dart';
import './payment_intents_post_request_body_payment_method_options_us_bank_account.dart';
import './payment_intents_post_request_body_payment_method_options_wechat_pay.dart';
import './payment_intents_post_request_body_payment_method_options_zip.dart';

/// auto generated
/// Payment method-specific configuration for this PaymentIntent.
class PaymentIntentsPostRequestBodyPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirm? affirm;

  ///  The afterpay_clearpay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpay?
      afterpayClearpay;

  ///  The alipay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAlipay? alipay;

  ///  The alma property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAlma? alma;

  ///  The amazon_pay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The au_becs_debit property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBacsDebit? bacsDebit;

  ///  The bancontact property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontact? bancontact;

  ///  The billie property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBillie? billie;

  ///  The blik property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBlik? blik;

  ///  The boleto property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsBoleto? boleto;

  ///  The card property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCard? card;

  ///  The card_present property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresent? cardPresent;

  ///  The cashapp property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCashapp? cashapp;

  ///  The crypto property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCrypto? crypto;

  ///  The customer_balance property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalance?
      customerBalance;

  ///  The eps property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsEps? eps;

  ///  The fpx property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsFpx? fpx;

  ///  The giropay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsGiropay? giropay;

  ///  The grabpay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsGrabpay? grabpay;

  ///  The ideal property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsIdeal? ideal;

  ///  The interac_present property
  String? interacPresent;

  ///  The kakao_pay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKakaoPay? kakaoPay;

  ///  The klarna property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarna? klarna;

  ///  The konbini property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbini? konbini;

  ///  The kr_card property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsKrCard? krCard;

  ///  The link property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsLink? link;

  ///  The mb_way property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsMbWay? mbWay;

  ///  The mobilepay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsMobilepay? mobilepay;

  ///  The multibanco property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibanco? multibanco;

  ///  The naver_pay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsNaverPay? naverPay;

  ///  The nz_bank_account property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccount? nzBankAccount;

  ///  The oxxo property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsOxxo? oxxo;

  ///  The p24 property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsP24? p24;

  ///  The pay_by_bank property
  String? payByBank;

  ///  The payco property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPayco? payco;

  ///  The paynow property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaynow? paynow;

  ///  The paypal property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPayto? payto;

  ///  The pix property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPix? pix;

  ///  The promptpay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsPromptpay? promptpay;

  ///  The revolut_pay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPay? revolutPay;

  ///  The samsung_pay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsSamsungPay? samsungPay;

  ///  The satispay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsSatispay? satispay;

  ///  The sepa_debit property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsSepaDebit? sepaDebit;

  ///  The sofort property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsSofort? sofort;

  ///  The swish property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsSwish? swish;

  ///  The twint property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsTwint? twint;

  ///  The us_bank_account property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPay? wechatPay;

  ///  The zip property
  PaymentIntentsPostRequestBodyPaymentMethodOptionsZip? zip;

  /// Instantiates a new [PaymentIntentsPostRequestBodyPaymentMethodOptions] and sets the default values.
  PaymentIntentsPostRequestBodyPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentsPostRequestBodyPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentIntentsPostRequestBodyPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAcssDebit>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirm>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirm
            .createFromDiscriminatorValue);
    deserializerMap[
        'afterpay_clearpay'] = (node) => afterpayClearpay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpay
            .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAlipay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsAlipay
            .createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsAlma>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAmazonPay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsAmazonPay
            .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBacsDebit>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsBacsDebit
            .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontact>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontact
            .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBillie>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsBillie
            .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsBlik>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBoleto>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsBoleto
            .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsCard>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCard
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresent>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCashapp>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCashapp
            .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCrypto>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCrypto
            .createFromDiscriminatorValue);
    deserializerMap[
        'customer_balance'] = (node) => customerBalance = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalance>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalance
            .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsEps>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsFpx>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsGiropay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsGiropay
            .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsGrabpay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsGrabpay
            .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsIdeal>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsIdeal
                .createFromDiscriminatorValue);
    deserializerMap['interac_present'] =
        (node) => interacPresent = node.getStringValue();
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKakaoPay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKakaoPay
            .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarna>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarna
            .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbini>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbini
            .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKrCard>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsKrCard
            .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsLink>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsMbWay>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsMbWay
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsMobilepay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsMobilepay
            .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibanco>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibanco
            .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsNaverPay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsNaverPay
            .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccount>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsOxxo>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsP24>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] =
        (node) => payByBank = node.getStringValue();
    deserializerMap['payco'] = (node) => payco = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsPayco>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaynow>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPaynow
            .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypal>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypal
            .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsPayto>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsPix>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPromptpay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPromptpay
            .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPay
            .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSamsungPay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsSamsungPay
            .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSatispay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsSatispay
            .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSepaDebit>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsSepaDebit
            .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSofort>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsSofort
            .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsSwish>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsTwint>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsTwint
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node.getObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPay>(
        PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPay
            .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip = node
        .getObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsZip>(
            PaymentIntentsPostRequestBodyPaymentMethodOptionsZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAlipay>(
        'alipay', alipay);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsAlma>('alma', alma);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBillie>(
        'billie', billie);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsBlik>('blik', blik);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsCard>('card', card);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsEps>(
            'eps', eps);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsFpx>(
            'fpx', fpx);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsIdeal>('ideal', ideal);
    writer.writeStringValue('interac_present', interacPresent);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsLink>('link', link);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsMbWay>(
        'mb_way', mbWay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsOxxo>('oxxo', oxxo);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsP24>(
            'p24', p24);
    writer.writeStringValue('pay_by_bank', payByBank);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPayco>('payco', payco);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsPayto>('payto', payto);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsPix>(
            'pix', pix);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSatispay>(
        'satispay', satispay);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsSofort>(
        'sofort', sofort);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsSwish>('swish', swish);
    writer.writeObjectValue<
        PaymentIntentsPostRequestBodyPaymentMethodOptionsTwint>('twint', twint);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<
            PaymentIntentsPostRequestBodyPaymentMethodOptionsWechatPay>(
        'wechat_pay', wechatPay);
    writer
        .writeObjectValue<PaymentIntentsPostRequestBodyPaymentMethodOptionsZip>(
            'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
