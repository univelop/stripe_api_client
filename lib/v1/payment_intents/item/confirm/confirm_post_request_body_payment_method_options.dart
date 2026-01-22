// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_acss_debit.dart';
import './confirm_post_request_body_payment_method_options_affirm.dart';
import './confirm_post_request_body_payment_method_options_afterpay_clearpay.dart';
import './confirm_post_request_body_payment_method_options_alipay.dart';
import './confirm_post_request_body_payment_method_options_alma.dart';
import './confirm_post_request_body_payment_method_options_amazon_pay.dart';
import './confirm_post_request_body_payment_method_options_au_becs_debit.dart';
import './confirm_post_request_body_payment_method_options_bacs_debit.dart';
import './confirm_post_request_body_payment_method_options_bancontact.dart';
import './confirm_post_request_body_payment_method_options_billie.dart';
import './confirm_post_request_body_payment_method_options_blik.dart';
import './confirm_post_request_body_payment_method_options_boleto.dart';
import './confirm_post_request_body_payment_method_options_card.dart';
import './confirm_post_request_body_payment_method_options_card_present.dart';
import './confirm_post_request_body_payment_method_options_cashapp.dart';
import './confirm_post_request_body_payment_method_options_crypto.dart';
import './confirm_post_request_body_payment_method_options_customer_balance.dart';
import './confirm_post_request_body_payment_method_options_eps.dart';
import './confirm_post_request_body_payment_method_options_fpx.dart';
import './confirm_post_request_body_payment_method_options_giropay.dart';
import './confirm_post_request_body_payment_method_options_grabpay.dart';
import './confirm_post_request_body_payment_method_options_ideal.dart';
import './confirm_post_request_body_payment_method_options_kakao_pay.dart';
import './confirm_post_request_body_payment_method_options_klarna.dart';
import './confirm_post_request_body_payment_method_options_konbini.dart';
import './confirm_post_request_body_payment_method_options_kr_card.dart';
import './confirm_post_request_body_payment_method_options_link.dart';
import './confirm_post_request_body_payment_method_options_mb_way.dart';
import './confirm_post_request_body_payment_method_options_mobilepay.dart';
import './confirm_post_request_body_payment_method_options_multibanco.dart';
import './confirm_post_request_body_payment_method_options_naver_pay.dart';
import './confirm_post_request_body_payment_method_options_nz_bank_account.dart';
import './confirm_post_request_body_payment_method_options_oxxo.dart';
import './confirm_post_request_body_payment_method_options_p24.dart';
import './confirm_post_request_body_payment_method_options_payco.dart';
import './confirm_post_request_body_payment_method_options_paynow.dart';
import './confirm_post_request_body_payment_method_options_paypal.dart';
import './confirm_post_request_body_payment_method_options_payto.dart';
import './confirm_post_request_body_payment_method_options_pix.dart';
import './confirm_post_request_body_payment_method_options_promptpay.dart';
import './confirm_post_request_body_payment_method_options_revolut_pay.dart';
import './confirm_post_request_body_payment_method_options_samsung_pay.dart';
import './confirm_post_request_body_payment_method_options_satispay.dart';
import './confirm_post_request_body_payment_method_options_sepa_debit.dart';
import './confirm_post_request_body_payment_method_options_sofort.dart';
import './confirm_post_request_body_payment_method_options_swish.dart';
import './confirm_post_request_body_payment_method_options_twint.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account.dart';
import './confirm_post_request_body_payment_method_options_wechat_pay.dart';
import './confirm_post_request_body_payment_method_options_zip.dart';

/// auto generated
/// Payment method-specific configuration for this PaymentIntent.
class ConfirmPostRequestBodyPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  ConfirmPostRequestBodyPaymentMethodOptionsAffirm? affirm;

  ///  The afterpay_clearpay property
  ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpay? afterpayClearpay;

  ///  The alipay property
  ConfirmPostRequestBodyPaymentMethodOptionsAlipay? alipay;

  ///  The alma property
  ConfirmPostRequestBodyPaymentMethodOptionsAlma? alma;

  ///  The amazon_pay property
  ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The au_becs_debit property
  ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit? bacsDebit;

  ///  The bancontact property
  ConfirmPostRequestBodyPaymentMethodOptionsBancontact? bancontact;

  ///  The billie property
  ConfirmPostRequestBodyPaymentMethodOptionsBillie? billie;

  ///  The blik property
  ConfirmPostRequestBodyPaymentMethodOptionsBlik? blik;

  ///  The boleto property
  ConfirmPostRequestBodyPaymentMethodOptionsBoleto? boleto;

  ///  The card property
  ConfirmPostRequestBodyPaymentMethodOptionsCard? card;

  ///  The card_present property
  ConfirmPostRequestBodyPaymentMethodOptionsCardPresent? cardPresent;

  ///  The cashapp property
  ConfirmPostRequestBodyPaymentMethodOptionsCashapp? cashapp;

  ///  The crypto property
  ConfirmPostRequestBodyPaymentMethodOptionsCrypto? crypto;

  ///  The customer_balance property
  ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalance? customerBalance;

  ///  The eps property
  ConfirmPostRequestBodyPaymentMethodOptionsEps? eps;

  ///  The fpx property
  ConfirmPostRequestBodyPaymentMethodOptionsFpx? fpx;

  ///  The giropay property
  ConfirmPostRequestBodyPaymentMethodOptionsGiropay? giropay;

  ///  The grabpay property
  ConfirmPostRequestBodyPaymentMethodOptionsGrabpay? grabpay;

  ///  The ideal property
  ConfirmPostRequestBodyPaymentMethodOptionsIdeal? ideal;

  ///  The interac_present property
  String? interacPresent;

  ///  The kakao_pay property
  ConfirmPostRequestBodyPaymentMethodOptionsKakaoPay? kakaoPay;

  ///  The klarna property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarna? klarna;

  ///  The konbini property
  ConfirmPostRequestBodyPaymentMethodOptionsKonbini? konbini;

  ///  The kr_card property
  ConfirmPostRequestBodyPaymentMethodOptionsKrCard? krCard;

  ///  The link property
  ConfirmPostRequestBodyPaymentMethodOptionsLink? link;

  ///  The mb_way property
  ConfirmPostRequestBodyPaymentMethodOptionsMbWay? mbWay;

  ///  The mobilepay property
  ConfirmPostRequestBodyPaymentMethodOptionsMobilepay? mobilepay;

  ///  The multibanco property
  ConfirmPostRequestBodyPaymentMethodOptionsMultibanco? multibanco;

  ///  The naver_pay property
  ConfirmPostRequestBodyPaymentMethodOptionsNaverPay? naverPay;

  ///  The nz_bank_account property
  ConfirmPostRequestBodyPaymentMethodOptionsNzBankAccount? nzBankAccount;

  ///  The oxxo property
  ConfirmPostRequestBodyPaymentMethodOptionsOxxo? oxxo;

  ///  The p24 property
  ConfirmPostRequestBodyPaymentMethodOptionsP24? p24;

  ///  The pay_by_bank property
  String? payByBank;

  ///  The payco property
  ConfirmPostRequestBodyPaymentMethodOptionsPayco? payco;

  ///  The paynow property
  ConfirmPostRequestBodyPaymentMethodOptionsPaynow? paynow;

  ///  The paypal property
  ConfirmPostRequestBodyPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  ConfirmPostRequestBodyPaymentMethodOptionsPayto? payto;

  ///  The pix property
  ConfirmPostRequestBodyPaymentMethodOptionsPix? pix;

  ///  The promptpay property
  ConfirmPostRequestBodyPaymentMethodOptionsPromptpay? promptpay;

  ///  The revolut_pay property
  ConfirmPostRequestBodyPaymentMethodOptionsRevolutPay? revolutPay;

  ///  The samsung_pay property
  ConfirmPostRequestBodyPaymentMethodOptionsSamsungPay? samsungPay;

  ///  The satispay property
  ConfirmPostRequestBodyPaymentMethodOptionsSatispay? satispay;

  ///  The sepa_debit property
  ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit? sepaDebit;

  ///  The sofort property
  ConfirmPostRequestBodyPaymentMethodOptionsSofort? sofort;

  ///  The swish property
  ConfirmPostRequestBodyPaymentMethodOptionsSwish? swish;

  ///  The twint property
  ConfirmPostRequestBodyPaymentMethodOptionsTwint? twint;

  ///  The us_bank_account property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  ConfirmPostRequestBodyPaymentMethodOptionsWechatPay? wechatPay;

  ///  The zip property
  ConfirmPostRequestBodyPaymentMethodOptionsZip? zip;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit>(
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAffirm>(
            ConfirmPostRequestBodyPaymentMethodOptionsAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
            ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAlipay>(
            ConfirmPostRequestBodyPaymentMethodOptionsAlipay
                .createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAlma>(
            ConfirmPostRequestBodyPaymentMethodOptionsAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay>(
            ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
            ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit>(
            ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBancontact>(
            ConfirmPostRequestBodyPaymentMethodOptionsBancontact
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBillie>(
            ConfirmPostRequestBodyPaymentMethodOptionsBillie
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBlik>(
            ConfirmPostRequestBodyPaymentMethodOptionsBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBoleto>(
            ConfirmPostRequestBodyPaymentMethodOptionsBoleto
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCard>(
            ConfirmPostRequestBodyPaymentMethodOptionsCard
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCardPresent>(
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCashapp>(
            ConfirmPostRequestBodyPaymentMethodOptionsCashapp
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCrypto>(
            ConfirmPostRequestBodyPaymentMethodOptionsCrypto
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalance>(
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsEps>(
            ConfirmPostRequestBodyPaymentMethodOptionsEps
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsFpx>(
            ConfirmPostRequestBodyPaymentMethodOptionsFpx
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsGiropay>(
            ConfirmPostRequestBodyPaymentMethodOptionsGiropay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsGrabpay>(
            ConfirmPostRequestBodyPaymentMethodOptionsGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsIdeal>(
            ConfirmPostRequestBodyPaymentMethodOptionsIdeal
                .createFromDiscriminatorValue);
    deserializerMap['interac_present'] =
        (node) => interacPresent = node.getStringValue();
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKakaoPay>(
            ConfirmPostRequestBodyPaymentMethodOptionsKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKlarna>(
            ConfirmPostRequestBodyPaymentMethodOptionsKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKonbini>(
            ConfirmPostRequestBodyPaymentMethodOptionsKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKrCard>(
            ConfirmPostRequestBodyPaymentMethodOptionsKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsLink>(
            ConfirmPostRequestBodyPaymentMethodOptionsLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsMbWay>(
            ConfirmPostRequestBodyPaymentMethodOptionsMbWay
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsMobilepay>(
            ConfirmPostRequestBodyPaymentMethodOptionsMobilepay
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsMultibanco>(
            ConfirmPostRequestBodyPaymentMethodOptionsMultibanco
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsNaverPay>(
            ConfirmPostRequestBodyPaymentMethodOptionsNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsNzBankAccount>(
            ConfirmPostRequestBodyPaymentMethodOptionsNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsOxxo>(
            ConfirmPostRequestBodyPaymentMethodOptionsOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsP24>(
            ConfirmPostRequestBodyPaymentMethodOptionsP24
                .createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] =
        (node) => payByBank = node.getStringValue();
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPayco>(
            ConfirmPostRequestBodyPaymentMethodOptionsPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPaynow>(
            ConfirmPostRequestBodyPaymentMethodOptionsPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPaypal>(
            ConfirmPostRequestBodyPaymentMethodOptionsPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPayto>(
            ConfirmPostRequestBodyPaymentMethodOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPix>(
            ConfirmPostRequestBodyPaymentMethodOptionsPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPromptpay>(
            ConfirmPostRequestBodyPaymentMethodOptionsPromptpay
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsRevolutPay>(
            ConfirmPostRequestBodyPaymentMethodOptionsRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSamsungPay>(
            ConfirmPostRequestBodyPaymentMethodOptionsSamsungPay
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSatispay>(
            ConfirmPostRequestBodyPaymentMethodOptionsSatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit>(
            ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSofort>(
            ConfirmPostRequestBodyPaymentMethodOptionsSofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSwish>(
            ConfirmPostRequestBodyPaymentMethodOptionsSwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsTwint>(
            ConfirmPostRequestBodyPaymentMethodOptionsTwint
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount>(
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsWechatPay>(
            ConfirmPostRequestBodyPaymentMethodOptionsWechatPay
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsZip>(
            ConfirmPostRequestBodyPaymentMethodOptionsZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit>(
            'acss_debit', acssDebit);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAlipay>(
        'alipay', alipay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAlma>(
        'alma', alma);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay>(
            'amazon_pay', amazonPay);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit>(
            'bacs_debit', bacsDebit);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBancontact>(
            'bancontact', bancontact);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBillie>(
        'billie', billie);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBlik>(
        'blik', blik);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsEps>(
        'eps', eps);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsFpx>(
        'fpx', fpx);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsIdeal>(
        'ideal', ideal);
    writer.writeStringValue('interac_present', interacPresent);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsLink>(
        'link', link);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsMbWay>(
        'mb_way', mbWay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsMobilepay>(
            'mobilepay', mobilepay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsMultibanco>(
            'multibanco', multibanco);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsP24>(
        'p24', p24);
    writer.writeStringValue('pay_by_bank', payByBank);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPayco>(
        'payco', payco);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPix>(
        'pix', pix);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPromptpay>(
            'promptpay', promptpay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsRevolutPay>(
            'revolut_pay', revolutPay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSamsungPay>(
            'samsung_pay', samsungPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSatispay>(
        'satispay', satispay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit>(
            'sepa_debit', sepaDebit);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSofort>(
        'sofort', sofort);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSwish>(
        'swish', swish);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsTwint>(
        'twint', twint);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsWechatPay>(
            'wechat_pay', wechatPay);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsZip>(
        'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
