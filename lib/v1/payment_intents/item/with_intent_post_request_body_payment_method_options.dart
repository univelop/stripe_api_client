// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit.dart';
import './with_intent_post_request_body_payment_method_options_affirm.dart';
import './with_intent_post_request_body_payment_method_options_afterpay_clearpay.dart';
import './with_intent_post_request_body_payment_method_options_alipay.dart';
import './with_intent_post_request_body_payment_method_options_alma.dart';
import './with_intent_post_request_body_payment_method_options_amazon_pay.dart';
import './with_intent_post_request_body_payment_method_options_au_becs_debit.dart';
import './with_intent_post_request_body_payment_method_options_bacs_debit.dart';
import './with_intent_post_request_body_payment_method_options_bancontact.dart';
import './with_intent_post_request_body_payment_method_options_billie.dart';
import './with_intent_post_request_body_payment_method_options_blik.dart';
import './with_intent_post_request_body_payment_method_options_boleto.dart';
import './with_intent_post_request_body_payment_method_options_card.dart';
import './with_intent_post_request_body_payment_method_options_card_present.dart';
import './with_intent_post_request_body_payment_method_options_cashapp.dart';
import './with_intent_post_request_body_payment_method_options_crypto.dart';
import './with_intent_post_request_body_payment_method_options_customer_balance.dart';
import './with_intent_post_request_body_payment_method_options_eps.dart';
import './with_intent_post_request_body_payment_method_options_fpx.dart';
import './with_intent_post_request_body_payment_method_options_giropay.dart';
import './with_intent_post_request_body_payment_method_options_grabpay.dart';
import './with_intent_post_request_body_payment_method_options_ideal.dart';
import './with_intent_post_request_body_payment_method_options_kakao_pay.dart';
import './with_intent_post_request_body_payment_method_options_klarna.dart';
import './with_intent_post_request_body_payment_method_options_konbini.dart';
import './with_intent_post_request_body_payment_method_options_kr_card.dart';
import './with_intent_post_request_body_payment_method_options_link.dart';
import './with_intent_post_request_body_payment_method_options_mb_way.dart';
import './with_intent_post_request_body_payment_method_options_mobilepay.dart';
import './with_intent_post_request_body_payment_method_options_multibanco.dart';
import './with_intent_post_request_body_payment_method_options_naver_pay.dart';
import './with_intent_post_request_body_payment_method_options_nz_bank_account.dart';
import './with_intent_post_request_body_payment_method_options_oxxo.dart';
import './with_intent_post_request_body_payment_method_options_p24.dart';
import './with_intent_post_request_body_payment_method_options_payco.dart';
import './with_intent_post_request_body_payment_method_options_paynow.dart';
import './with_intent_post_request_body_payment_method_options_paypal.dart';
import './with_intent_post_request_body_payment_method_options_payto.dart';
import './with_intent_post_request_body_payment_method_options_pix.dart';
import './with_intent_post_request_body_payment_method_options_promptpay.dart';
import './with_intent_post_request_body_payment_method_options_revolut_pay.dart';
import './with_intent_post_request_body_payment_method_options_samsung_pay.dart';
import './with_intent_post_request_body_payment_method_options_satispay.dart';
import './with_intent_post_request_body_payment_method_options_sepa_debit.dart';
import './with_intent_post_request_body_payment_method_options_sofort.dart';
import './with_intent_post_request_body_payment_method_options_swish.dart';
import './with_intent_post_request_body_payment_method_options_twint.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account.dart';
import './with_intent_post_request_body_payment_method_options_wechat_pay.dart';
import './with_intent_post_request_body_payment_method_options_zip.dart';

/// auto generated
/// Payment-method-specific configuration for this PaymentIntent.
class WithIntentPostRequestBodyPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  WithIntentPostRequestBodyPaymentMethodOptionsAffirm? affirm;

  ///  The afterpay_clearpay property
  WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpay?
      afterpayClearpay;

  ///  The alipay property
  WithIntentPostRequestBodyPaymentMethodOptionsAlipay? alipay;

  ///  The alma property
  WithIntentPostRequestBodyPaymentMethodOptionsAlma? alma;

  ///  The amazon_pay property
  WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The au_becs_debit property
  WithIntentPostRequestBodyPaymentMethodOptionsAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit? bacsDebit;

  ///  The bancontact property
  WithIntentPostRequestBodyPaymentMethodOptionsBancontact? bancontact;

  ///  The billie property
  WithIntentPostRequestBodyPaymentMethodOptionsBillie? billie;

  ///  The blik property
  WithIntentPostRequestBodyPaymentMethodOptionsBlik? blik;

  ///  The boleto property
  WithIntentPostRequestBodyPaymentMethodOptionsBoleto? boleto;

  ///  The card property
  WithIntentPostRequestBodyPaymentMethodOptionsCard? card;

  ///  The card_present property
  WithIntentPostRequestBodyPaymentMethodOptionsCardPresent? cardPresent;

  ///  The cashapp property
  WithIntentPostRequestBodyPaymentMethodOptionsCashapp? cashapp;

  ///  The crypto property
  WithIntentPostRequestBodyPaymentMethodOptionsCrypto? crypto;

  ///  The customer_balance property
  WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalance? customerBalance;

  ///  The eps property
  WithIntentPostRequestBodyPaymentMethodOptionsEps? eps;

  ///  The fpx property
  WithIntentPostRequestBodyPaymentMethodOptionsFpx? fpx;

  ///  The giropay property
  WithIntentPostRequestBodyPaymentMethodOptionsGiropay? giropay;

  ///  The grabpay property
  WithIntentPostRequestBodyPaymentMethodOptionsGrabpay? grabpay;

  ///  The ideal property
  WithIntentPostRequestBodyPaymentMethodOptionsIdeal? ideal;

  ///  The interac_present property
  String? interacPresent;

  ///  The kakao_pay property
  WithIntentPostRequestBodyPaymentMethodOptionsKakaoPay? kakaoPay;

  ///  The klarna property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarna? klarna;

  ///  The konbini property
  WithIntentPostRequestBodyPaymentMethodOptionsKonbini? konbini;

  ///  The kr_card property
  WithIntentPostRequestBodyPaymentMethodOptionsKrCard? krCard;

  ///  The link property
  WithIntentPostRequestBodyPaymentMethodOptionsLink? link;

  ///  The mb_way property
  WithIntentPostRequestBodyPaymentMethodOptionsMbWay? mbWay;

  ///  The mobilepay property
  WithIntentPostRequestBodyPaymentMethodOptionsMobilepay? mobilepay;

  ///  The multibanco property
  WithIntentPostRequestBodyPaymentMethodOptionsMultibanco? multibanco;

  ///  The naver_pay property
  WithIntentPostRequestBodyPaymentMethodOptionsNaverPay? naverPay;

  ///  The nz_bank_account property
  WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccount? nzBankAccount;

  ///  The oxxo property
  WithIntentPostRequestBodyPaymentMethodOptionsOxxo? oxxo;

  ///  The p24 property
  WithIntentPostRequestBodyPaymentMethodOptionsP24? p24;

  ///  The pay_by_bank property
  String? payByBank;

  ///  The payco property
  WithIntentPostRequestBodyPaymentMethodOptionsPayco? payco;

  ///  The paynow property
  WithIntentPostRequestBodyPaymentMethodOptionsPaynow? paynow;

  ///  The paypal property
  WithIntentPostRequestBodyPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  WithIntentPostRequestBodyPaymentMethodOptionsPayto? payto;

  ///  The pix property
  WithIntentPostRequestBodyPaymentMethodOptionsPix? pix;

  ///  The promptpay property
  WithIntentPostRequestBodyPaymentMethodOptionsPromptpay? promptpay;

  ///  The revolut_pay property
  WithIntentPostRequestBodyPaymentMethodOptionsRevolutPay? revolutPay;

  ///  The samsung_pay property
  WithIntentPostRequestBodyPaymentMethodOptionsSamsungPay? samsungPay;

  ///  The satispay property
  WithIntentPostRequestBodyPaymentMethodOptionsSatispay? satispay;

  ///  The sepa_debit property
  WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit? sepaDebit;

  ///  The sofort property
  WithIntentPostRequestBodyPaymentMethodOptionsSofort? sofort;

  ///  The swish property
  WithIntentPostRequestBodyPaymentMethodOptionsSwish? swish;

  ///  The twint property
  WithIntentPostRequestBodyPaymentMethodOptionsTwint? twint;

  ///  The us_bank_account property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  WithIntentPostRequestBodyPaymentMethodOptionsWechatPay? wechatPay;

  ///  The zip property
  WithIntentPostRequestBodyPaymentMethodOptionsZip? zip;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptions] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit>(
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAffirm>(
            WithIntentPostRequestBodyPaymentMethodOptionsAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAlipay>(
            WithIntentPostRequestBodyPaymentMethodOptionsAlipay
                .createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAlma>(
            WithIntentPostRequestBodyPaymentMethodOptionsAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay>(
            WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
            WithIntentPostRequestBodyPaymentMethodOptionsAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit>(
            WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsBancontact>(
        WithIntentPostRequestBodyPaymentMethodOptionsBancontact
            .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBillie>(
            WithIntentPostRequestBodyPaymentMethodOptionsBillie
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBlik>(
            WithIntentPostRequestBodyPaymentMethodOptionsBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBoleto>(
            WithIntentPostRequestBodyPaymentMethodOptionsBoleto
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCard>(
            WithIntentPostRequestBodyPaymentMethodOptionsCard
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardPresent>(
            WithIntentPostRequestBodyPaymentMethodOptionsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCashapp>(
            WithIntentPostRequestBodyPaymentMethodOptionsCashapp
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCrypto>(
            WithIntentPostRequestBodyPaymentMethodOptionsCrypto
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalance>(
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsEps>(
            WithIntentPostRequestBodyPaymentMethodOptionsEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsFpx>(
            WithIntentPostRequestBodyPaymentMethodOptionsFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsGiropay>(
            WithIntentPostRequestBodyPaymentMethodOptionsGiropay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsGrabpay>(
            WithIntentPostRequestBodyPaymentMethodOptionsGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsIdeal>(
            WithIntentPostRequestBodyPaymentMethodOptionsIdeal
                .createFromDiscriminatorValue);
    deserializerMap['interac_present'] =
        (node) => interacPresent = node.getStringValue();
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKakaoPay>(
            WithIntentPostRequestBodyPaymentMethodOptionsKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKlarna>(
            WithIntentPostRequestBodyPaymentMethodOptionsKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKonbini>(
            WithIntentPostRequestBodyPaymentMethodOptionsKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKrCard>(
            WithIntentPostRequestBodyPaymentMethodOptionsKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsLink>(
            WithIntentPostRequestBodyPaymentMethodOptionsLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsMbWay>(
            WithIntentPostRequestBodyPaymentMethodOptionsMbWay
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsMobilepay>(
            WithIntentPostRequestBodyPaymentMethodOptionsMobilepay
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsMultibanco>(
        WithIntentPostRequestBodyPaymentMethodOptionsMultibanco
            .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsNaverPay>(
            WithIntentPostRequestBodyPaymentMethodOptionsNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccount>(
            WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsOxxo>(
            WithIntentPostRequestBodyPaymentMethodOptionsOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsP24>(
            WithIntentPostRequestBodyPaymentMethodOptionsP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] =
        (node) => payByBank = node.getStringValue();
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPayco>(
            WithIntentPostRequestBodyPaymentMethodOptionsPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPaynow>(
            WithIntentPostRequestBodyPaymentMethodOptionsPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPaypal>(
            WithIntentPostRequestBodyPaymentMethodOptionsPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPayto>(
            WithIntentPostRequestBodyPaymentMethodOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPix>(
            WithIntentPostRequestBodyPaymentMethodOptionsPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPromptpay>(
            WithIntentPostRequestBodyPaymentMethodOptionsPromptpay
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsRevolutPay>(
        WithIntentPostRequestBodyPaymentMethodOptionsRevolutPay
            .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node.getObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSamsungPay>(
        WithIntentPostRequestBodyPaymentMethodOptionsSamsungPay
            .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsSatispay>(
            WithIntentPostRequestBodyPaymentMethodOptionsSatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit>(
            WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsSofort>(
            WithIntentPostRequestBodyPaymentMethodOptionsSofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsSwish>(
            WithIntentPostRequestBodyPaymentMethodOptionsSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsTwint>(
            WithIntentPostRequestBodyPaymentMethodOptionsTwint
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount>(
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsWechatPay>(
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPay
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsZip>(
            WithIntentPostRequestBodyPaymentMethodOptionsZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAffirm>(
            'affirm', affirm);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAlipay>(
            'alipay', alipay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAlma>(
        'alma', alma);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBillie>(
            'billie', billie);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBlik>(
        'blik', blik);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBoleto>(
            'boleto', boleto);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardPresent>(
        'card_present', cardPresent);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCashapp>(
            'cashapp', cashapp);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCrypto>(
            'crypto', crypto);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsEps>(
        'eps', eps);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsFpx>(
        'fpx', fpx);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsGiropay>(
            'giropay', giropay);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsGrabpay>(
            'grabpay', grabpay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsIdeal>(
        'ideal', ideal);
    writer.writeStringValue('interac_present', interacPresent);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsKakaoPay>(
        'kakao_pay', kakaoPay);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKlarna>(
            'klarna', klarna);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKonbini>(
            'konbini', konbini);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKrCard>(
            'kr_card', krCard);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsLink>(
        'link', link);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsMbWay>(
        'mb_way', mbWay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsP24>(
        'p24', p24);
    writer.writeStringValue('pay_by_bank', payByBank);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPayco>(
        'payco', payco);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPaynow>(
            'paynow', paynow);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPaypal>(
            'paypal', paypal);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPix>(
        'pix', pix);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSatispay>(
        'satispay', satispay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit>(
        'sepa_debit', sepaDebit);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsSofort>(
            'sofort', sofort);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsSwish>(
        'swish', swish);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsTwint>(
        'twint', twint);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsZip>(
        'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
