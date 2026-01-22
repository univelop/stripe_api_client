// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sessions_post_request_body_payment_method_options_acss_debit.dart';
import './sessions_post_request_body_payment_method_options_affirm.dart';
import './sessions_post_request_body_payment_method_options_afterpay_clearpay.dart';
import './sessions_post_request_body_payment_method_options_alipay.dart';
import './sessions_post_request_body_payment_method_options_alma.dart';
import './sessions_post_request_body_payment_method_options_amazon_pay.dart';
import './sessions_post_request_body_payment_method_options_au_becs_debit.dart';
import './sessions_post_request_body_payment_method_options_bacs_debit.dart';
import './sessions_post_request_body_payment_method_options_bancontact.dart';
import './sessions_post_request_body_payment_method_options_billie.dart';
import './sessions_post_request_body_payment_method_options_boleto.dart';
import './sessions_post_request_body_payment_method_options_card.dart';
import './sessions_post_request_body_payment_method_options_cashapp.dart';
import './sessions_post_request_body_payment_method_options_customer_balance.dart';
import './sessions_post_request_body_payment_method_options_demo_pay.dart';
import './sessions_post_request_body_payment_method_options_eps.dart';
import './sessions_post_request_body_payment_method_options_fpx.dart';
import './sessions_post_request_body_payment_method_options_giropay.dart';
import './sessions_post_request_body_payment_method_options_grabpay.dart';
import './sessions_post_request_body_payment_method_options_ideal.dart';
import './sessions_post_request_body_payment_method_options_kakao_pay.dart';
import './sessions_post_request_body_payment_method_options_klarna.dart';
import './sessions_post_request_body_payment_method_options_konbini.dart';
import './sessions_post_request_body_payment_method_options_kr_card.dart';
import './sessions_post_request_body_payment_method_options_link.dart';
import './sessions_post_request_body_payment_method_options_mobilepay.dart';
import './sessions_post_request_body_payment_method_options_multibanco.dart';
import './sessions_post_request_body_payment_method_options_naver_pay.dart';
import './sessions_post_request_body_payment_method_options_oxxo.dart';
import './sessions_post_request_body_payment_method_options_p24.dart';
import './sessions_post_request_body_payment_method_options_pay_by_bank.dart';
import './sessions_post_request_body_payment_method_options_payco.dart';
import './sessions_post_request_body_payment_method_options_paynow.dart';
import './sessions_post_request_body_payment_method_options_paypal.dart';
import './sessions_post_request_body_payment_method_options_payto.dart';
import './sessions_post_request_body_payment_method_options_pix.dart';
import './sessions_post_request_body_payment_method_options_revolut_pay.dart';
import './sessions_post_request_body_payment_method_options_samsung_pay.dart';
import './sessions_post_request_body_payment_method_options_satispay.dart';
import './sessions_post_request_body_payment_method_options_sepa_debit.dart';
import './sessions_post_request_body_payment_method_options_sofort.dart';
import './sessions_post_request_body_payment_method_options_swish.dart';
import './sessions_post_request_body_payment_method_options_twint.dart';
import './sessions_post_request_body_payment_method_options_us_bank_account.dart';
import './sessions_post_request_body_payment_method_options_wechat_pay.dart';

/// auto generated
/// Payment-method-specific configuration.
class SessionsPostRequestBodyPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SessionsPostRequestBodyPaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  SessionsPostRequestBodyPaymentMethodOptionsAffirm? affirm;

  ///  The afterpay_clearpay property
  SessionsPostRequestBodyPaymentMethodOptionsAfterpayClearpay? afterpayClearpay;

  ///  The alipay property
  SessionsPostRequestBodyPaymentMethodOptionsAlipay? alipay;

  ///  The alma property
  SessionsPostRequestBodyPaymentMethodOptionsAlma? alma;

  ///  The amazon_pay property
  SessionsPostRequestBodyPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The au_becs_debit property
  SessionsPostRequestBodyPaymentMethodOptionsAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  SessionsPostRequestBodyPaymentMethodOptionsBacsDebit? bacsDebit;

  ///  The bancontact property
  SessionsPostRequestBodyPaymentMethodOptionsBancontact? bancontact;

  ///  The billie property
  SessionsPostRequestBodyPaymentMethodOptionsBillie? billie;

  ///  The boleto property
  SessionsPostRequestBodyPaymentMethodOptionsBoleto? boleto;

  ///  The card property
  SessionsPostRequestBodyPaymentMethodOptionsCard? card;

  ///  The cashapp property
  SessionsPostRequestBodyPaymentMethodOptionsCashapp? cashapp;

  ///  The customer_balance property
  SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance? customerBalance;

  ///  The demo_pay property
  SessionsPostRequestBodyPaymentMethodOptionsDemoPay? demoPay;

  ///  The eps property
  SessionsPostRequestBodyPaymentMethodOptionsEps? eps;

  ///  The fpx property
  SessionsPostRequestBodyPaymentMethodOptionsFpx? fpx;

  ///  The giropay property
  SessionsPostRequestBodyPaymentMethodOptionsGiropay? giropay;

  ///  The grabpay property
  SessionsPostRequestBodyPaymentMethodOptionsGrabpay? grabpay;

  ///  The ideal property
  SessionsPostRequestBodyPaymentMethodOptionsIdeal? ideal;

  ///  The kakao_pay property
  SessionsPostRequestBodyPaymentMethodOptionsKakaoPay? kakaoPay;

  ///  The klarna property
  SessionsPostRequestBodyPaymentMethodOptionsKlarna? klarna;

  ///  The konbini property
  SessionsPostRequestBodyPaymentMethodOptionsKonbini? konbini;

  ///  The kr_card property
  SessionsPostRequestBodyPaymentMethodOptionsKrCard? krCard;

  ///  The link property
  SessionsPostRequestBodyPaymentMethodOptionsLink? link;

  ///  The mobilepay property
  SessionsPostRequestBodyPaymentMethodOptionsMobilepay? mobilepay;

  ///  The multibanco property
  SessionsPostRequestBodyPaymentMethodOptionsMultibanco? multibanco;

  ///  The naver_pay property
  SessionsPostRequestBodyPaymentMethodOptionsNaverPay? naverPay;

  ///  The oxxo property
  SessionsPostRequestBodyPaymentMethodOptionsOxxo? oxxo;

  ///  The p24 property
  SessionsPostRequestBodyPaymentMethodOptionsP24? p24;

  ///  The pay_by_bank property
  SessionsPostRequestBodyPaymentMethodOptionsPayByBank? payByBank;

  ///  The payco property
  SessionsPostRequestBodyPaymentMethodOptionsPayco? payco;

  ///  The paynow property
  SessionsPostRequestBodyPaymentMethodOptionsPaynow? paynow;

  ///  The paypal property
  SessionsPostRequestBodyPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  SessionsPostRequestBodyPaymentMethodOptionsPayto? payto;

  ///  The pix property
  SessionsPostRequestBodyPaymentMethodOptionsPix? pix;

  ///  The revolut_pay property
  SessionsPostRequestBodyPaymentMethodOptionsRevolutPay? revolutPay;

  ///  The samsung_pay property
  SessionsPostRequestBodyPaymentMethodOptionsSamsungPay? samsungPay;

  ///  The satispay property
  SessionsPostRequestBodyPaymentMethodOptionsSatispay? satispay;

  ///  The sepa_debit property
  SessionsPostRequestBodyPaymentMethodOptionsSepaDebit? sepaDebit;

  ///  The sofort property
  SessionsPostRequestBodyPaymentMethodOptionsSofort? sofort;

  ///  The swish property
  SessionsPostRequestBodyPaymentMethodOptionsSwish? swish;

  ///  The twint property
  SessionsPostRequestBodyPaymentMethodOptionsTwint? twint;

  ///  The us_bank_account property
  SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  SessionsPostRequestBodyPaymentMethodOptionsWechatPay? wechatPay;

  /// Instantiates a new [SessionsPostRequestBodyPaymentMethodOptions] and sets the default values.
  SessionsPostRequestBodyPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SessionsPostRequestBodyPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SessionsPostRequestBodyPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAcssDebit>(
            SessionsPostRequestBodyPaymentMethodOptionsAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAffirm>(
            SessionsPostRequestBodyPaymentMethodOptionsAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
            SessionsPostRequestBodyPaymentMethodOptionsAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAlipay>(
            SessionsPostRequestBodyPaymentMethodOptionsAlipay
                .createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAlma>(
            SessionsPostRequestBodyPaymentMethodOptionsAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAmazonPay>(
            SessionsPostRequestBodyPaymentMethodOptionsAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
            SessionsPostRequestBodyPaymentMethodOptionsAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsBacsDebit>(
            SessionsPostRequestBodyPaymentMethodOptionsBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsBancontact>(
            SessionsPostRequestBodyPaymentMethodOptionsBancontact
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsBillie>(
            SessionsPostRequestBodyPaymentMethodOptionsBillie
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsBoleto>(
            SessionsPostRequestBodyPaymentMethodOptionsBoleto
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsCard>(
            SessionsPostRequestBodyPaymentMethodOptionsCard
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsCashapp>(
            SessionsPostRequestBodyPaymentMethodOptionsCashapp
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance>(
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['demo_pay'] = (node) => demoPay =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsDemoPay>(
            SessionsPostRequestBodyPaymentMethodOptionsDemoPay
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsEps>(
            SessionsPostRequestBodyPaymentMethodOptionsEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsFpx>(
            SessionsPostRequestBodyPaymentMethodOptionsFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsGiropay>(
            SessionsPostRequestBodyPaymentMethodOptionsGiropay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsGrabpay>(
            SessionsPostRequestBodyPaymentMethodOptionsGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsIdeal>(
            SessionsPostRequestBodyPaymentMethodOptionsIdeal
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKakaoPay>(
            SessionsPostRequestBodyPaymentMethodOptionsKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKlarna>(
            SessionsPostRequestBodyPaymentMethodOptionsKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKonbini>(
            SessionsPostRequestBodyPaymentMethodOptionsKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKrCard>(
            SessionsPostRequestBodyPaymentMethodOptionsKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsLink>(
            SessionsPostRequestBodyPaymentMethodOptionsLink
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsMobilepay>(
            SessionsPostRequestBodyPaymentMethodOptionsMobilepay
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsMultibanco>(
            SessionsPostRequestBodyPaymentMethodOptionsMultibanco
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsNaverPay>(
            SessionsPostRequestBodyPaymentMethodOptionsNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsOxxo>(
            SessionsPostRequestBodyPaymentMethodOptionsOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsP24>(
            SessionsPostRequestBodyPaymentMethodOptionsP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPayByBank>(
            SessionsPostRequestBodyPaymentMethodOptionsPayByBank
                .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPayco>(
            SessionsPostRequestBodyPaymentMethodOptionsPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPaynow>(
            SessionsPostRequestBodyPaymentMethodOptionsPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPaypal>(
            SessionsPostRequestBodyPaymentMethodOptionsPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPayto>(
            SessionsPostRequestBodyPaymentMethodOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPix>(
            SessionsPostRequestBodyPaymentMethodOptionsPix
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsRevolutPay>(
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSamsungPay>(
            SessionsPostRequestBodyPaymentMethodOptionsSamsungPay
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSatispay>(
            SessionsPostRequestBodyPaymentMethodOptionsSatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSepaDebit>(
            SessionsPostRequestBodyPaymentMethodOptionsSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSofort>(
            SessionsPostRequestBodyPaymentMethodOptionsSofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSwish>(
            SessionsPostRequestBodyPaymentMethodOptionsSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsTwint>(
            SessionsPostRequestBodyPaymentMethodOptionsTwint
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount>(
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node
        .getObjectValue<SessionsPostRequestBodyPaymentMethodOptionsWechatPay>(
            SessionsPostRequestBodyPaymentMethodOptionsWechatPay
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAcssDebit>(
            'acss_debit', acssDebit);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAlipay>(
        'alipay', alipay);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAlma>(
        'alma', alma);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsAmazonPay>(
            'amazon_pay', amazonPay);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsBacsDebit>(
            'bacs_debit', bacsDebit);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsBillie>(
        'billie', billie);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsDemoPay>(
        'demo_pay', demoPay);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsEps>(
        'eps', eps);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsFpx>(
        'fpx', fpx);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsIdeal>(
        'ideal', ideal);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKakaoPay>(
            'kakao_pay', kakaoPay);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsLink>(
        'link', link);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsMobilepay>(
            'mobilepay', mobilepay);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsMultibanco>(
        'multibanco', multibanco);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsNaverPay>(
            'naver_pay', naverPay);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsP24>(
        'p24', p24);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPayByBank>(
            'pay_by_bank', payByBank);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPayco>(
        'payco', payco);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsPix>(
        'pix', pix);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsSamsungPay>(
        'samsung_pay', samsungPay);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSatispay>(
            'satispay', satispay);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSepaDebit>(
            'sepa_debit', sepaDebit);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSofort>(
        'sofort', sofort);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsSwish>(
        'swish', swish);
    writer.writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsTwint>(
        'twint', twint);
    writer.writeObjectValue<
            SessionsPostRequestBodyPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer
        .writeObjectValue<SessionsPostRequestBodyPaymentMethodOptionsWechatPay>(
            'wechat_pay', wechatPay);
    writer.writeAdditionalData(additionalData);
  }
}
