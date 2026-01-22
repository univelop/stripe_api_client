// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_intent_payment_method_options_acss_debit_wrapper.dart';
import './payment_intent_payment_method_options_affirm.dart';
import './payment_intent_payment_method_options_afterpay_clearpay.dart';
import './payment_intent_payment_method_options_alipay.dart';
import './payment_intent_payment_method_options_alma.dart';
import './payment_intent_payment_method_options_amazon_pay.dart';
import './payment_intent_payment_method_options_au_becs_debit_wrapper.dart';
import './payment_intent_payment_method_options_bacs_debit_wrapper.dart';
import './payment_intent_payment_method_options_bancontact.dart';
import './payment_intent_payment_method_options_billie.dart';
import './payment_intent_payment_method_options_blik_wrapper.dart';
import './payment_intent_payment_method_options_boleto.dart';
import './payment_intent_payment_method_options_card_present.dart';
import './payment_intent_payment_method_options_card_wrapper.dart';
import './payment_intent_payment_method_options_cashapp.dart';
import './payment_intent_payment_method_options_crypto.dart';
import './payment_intent_payment_method_options_customer_balance.dart';
import './payment_intent_payment_method_options_eps_wrapper.dart';
import './payment_intent_payment_method_options_fpx.dart';
import './payment_intent_payment_method_options_giropay.dart';
import './payment_intent_payment_method_options_grabpay.dart';
import './payment_intent_payment_method_options_ideal.dart';
import './payment_intent_payment_method_options_interac_present.dart';
import './payment_intent_payment_method_options_kakao_pay.dart';
import './payment_intent_payment_method_options_klarna.dart';
import './payment_intent_payment_method_options_konbini.dart';
import './payment_intent_payment_method_options_kr_card.dart';
import './payment_intent_payment_method_options_link_wrapper.dart';
import './payment_intent_payment_method_options_mb_way.dart';
import './payment_intent_payment_method_options_mobilepay_wrapper.dart';
import './payment_intent_payment_method_options_multibanco.dart';
import './payment_intent_payment_method_options_naver_pay.dart';
import './payment_intent_payment_method_options_nz_bank_account_wrapper.dart';
import './payment_intent_payment_method_options_oxxo.dart';
import './payment_intent_payment_method_options_p24.dart';
import './payment_intent_payment_method_options_pay_by_bank.dart';
import './payment_intent_payment_method_options_payco.dart';
import './payment_intent_payment_method_options_paynow.dart';
import './payment_intent_payment_method_options_paypal.dart';
import './payment_intent_payment_method_options_payto_wrapper.dart';
import './payment_intent_payment_method_options_pix.dart';
import './payment_intent_payment_method_options_promptpay.dart';
import './payment_intent_payment_method_options_revolut_pay.dart';
import './payment_intent_payment_method_options_samsung_pay.dart';
import './payment_intent_payment_method_options_satispay.dart';
import './payment_intent_payment_method_options_sepa_debit_wrapper.dart';
import './payment_intent_payment_method_options_sofort.dart';
import './payment_intent_payment_method_options_swish_wrapper.dart';
import './payment_intent_payment_method_options_twint.dart';
import './payment_intent_payment_method_options_us_bank_account_wrapper.dart';
import './payment_intent_payment_method_options_wechat_pay.dart';
import './payment_intent_payment_method_options_zip.dart';

/// auto generated
class PaymentIntentPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  PaymentIntentPaymentMethodOptionsAcssDebitWrapper? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  PaymentIntentPaymentMethodOptionsAffirm? affirm;

  ///  The afterpay_clearpay property
  PaymentIntentPaymentMethodOptionsAfterpayClearpay? afterpayClearpay;

  ///  The alipay property
  PaymentIntentPaymentMethodOptionsAlipay? alipay;

  ///  The alma property
  PaymentIntentPaymentMethodOptionsAlma? alma;

  ///  The amazon_pay property
  PaymentIntentPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The au_becs_debit property
  PaymentIntentPaymentMethodOptionsAuBecsDebitWrapper? auBecsDebit;

  ///  The bacs_debit property
  PaymentIntentPaymentMethodOptionsBacsDebitWrapper? bacsDebit;

  ///  The bancontact property
  PaymentIntentPaymentMethodOptionsBancontact? bancontact;

  ///  The billie property
  PaymentIntentPaymentMethodOptionsBillie? billie;

  ///  The blik property
  PaymentIntentPaymentMethodOptionsBlikWrapper? blik;

  ///  The boleto property
  PaymentIntentPaymentMethodOptionsBoleto? boleto;

  ///  The card property
  PaymentIntentPaymentMethodOptionsCardWrapper? card;

  ///  The card_present property
  PaymentIntentPaymentMethodOptionsCardPresent? cardPresent;

  ///  The cashapp property
  PaymentIntentPaymentMethodOptionsCashapp? cashapp;

  ///  The crypto property
  PaymentIntentPaymentMethodOptionsCrypto? crypto;

  ///  The customer_balance property
  PaymentIntentPaymentMethodOptionsCustomerBalance? customerBalance;

  ///  The eps property
  PaymentIntentPaymentMethodOptionsEpsWrapper? eps;

  ///  The fpx property
  PaymentIntentPaymentMethodOptionsFpx? fpx;

  ///  The giropay property
  PaymentIntentPaymentMethodOptionsGiropay? giropay;

  ///  The grabpay property
  PaymentIntentPaymentMethodOptionsGrabpay? grabpay;

  ///  The ideal property
  PaymentIntentPaymentMethodOptionsIdeal? ideal;

  ///  The interac_present property
  PaymentIntentPaymentMethodOptionsInteracPresent? interacPresent;

  ///  The kakao_pay property
  PaymentIntentPaymentMethodOptionsKakaoPay? kakaoPay;

  ///  The klarna property
  PaymentIntentPaymentMethodOptionsKlarna? klarna;

  ///  The konbini property
  PaymentIntentPaymentMethodOptionsKonbini? konbini;

  ///  The kr_card property
  PaymentIntentPaymentMethodOptionsKrCard? krCard;

  ///  The link property
  PaymentIntentPaymentMethodOptionsLinkWrapper? link;

  ///  The mb_way property
  PaymentIntentPaymentMethodOptionsMbWay? mbWay;

  ///  The mobilepay property
  PaymentIntentPaymentMethodOptionsMobilepayWrapper? mobilepay;

  ///  The multibanco property
  PaymentIntentPaymentMethodOptionsMultibanco? multibanco;

  ///  The naver_pay property
  PaymentIntentPaymentMethodOptionsNaverPay? naverPay;

  ///  The nz_bank_account property
  PaymentIntentPaymentMethodOptionsNzBankAccountWrapper? nzBankAccount;

  ///  The oxxo property
  PaymentIntentPaymentMethodOptionsOxxo? oxxo;

  ///  The p24 property
  PaymentIntentPaymentMethodOptionsP24? p24;

  ///  The pay_by_bank property
  PaymentIntentPaymentMethodOptionsPayByBank? payByBank;

  ///  The payco property
  PaymentIntentPaymentMethodOptionsPayco? payco;

  ///  The paynow property
  PaymentIntentPaymentMethodOptionsPaynow? paynow;

  ///  The paypal property
  PaymentIntentPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  PaymentIntentPaymentMethodOptionsPaytoWrapper? payto;

  ///  The pix property
  PaymentIntentPaymentMethodOptionsPix? pix;

  ///  The promptpay property
  PaymentIntentPaymentMethodOptionsPromptpay? promptpay;

  ///  The revolut_pay property
  PaymentIntentPaymentMethodOptionsRevolutPay? revolutPay;

  ///  The samsung_pay property
  PaymentIntentPaymentMethodOptionsSamsungPay? samsungPay;

  ///  The satispay property
  PaymentIntentPaymentMethodOptionsSatispay? satispay;

  ///  The sepa_debit property
  PaymentIntentPaymentMethodOptionsSepaDebitWrapper? sepaDebit;

  ///  The sofort property
  PaymentIntentPaymentMethodOptionsSofort? sofort;

  ///  The swish property
  PaymentIntentPaymentMethodOptionsSwishWrapper? swish;

  ///  The twint property
  PaymentIntentPaymentMethodOptionsTwint? twint;

  ///  The us_bank_account property
  PaymentIntentPaymentMethodOptionsUsBankAccountWrapper? usBankAccount;

  ///  The wechat_pay property
  PaymentIntentPaymentMethodOptionsWechatPay? wechatPay;

  ///  The zip property
  PaymentIntentPaymentMethodOptionsZip? zip;

  /// Instantiates a new [PaymentIntentPaymentMethodOptions] and sets the default values.
  PaymentIntentPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentIntentPaymentMethodOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentIntentPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsAcssDebitWrapper>(
            PaymentIntentPaymentMethodOptionsAcssDebitWrapper
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsAffirm>(
        PaymentIntentPaymentMethodOptionsAffirm.createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsAfterpayClearpay>(
            PaymentIntentPaymentMethodOptionsAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsAlipay>(
        PaymentIntentPaymentMethodOptionsAlipay.createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsAlma>(
            PaymentIntentPaymentMethodOptionsAlma.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsAmazonPay>(
            PaymentIntentPaymentMethodOptionsAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit = node
        .getObjectValue<PaymentIntentPaymentMethodOptionsAuBecsDebitWrapper>(
            PaymentIntentPaymentMethodOptionsAuBecsDebitWrapper
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsBacsDebitWrapper>(
            PaymentIntentPaymentMethodOptionsBacsDebitWrapper
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsBancontact>(
            PaymentIntentPaymentMethodOptionsBancontact
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsBillie>(
        PaymentIntentPaymentMethodOptionsBillie.createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsBlikWrapper>(
            PaymentIntentPaymentMethodOptionsBlikWrapper
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsBoleto>(
        PaymentIntentPaymentMethodOptionsBoleto.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsCardWrapper>(
            PaymentIntentPaymentMethodOptionsCardWrapper
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsCardPresent>(
            PaymentIntentPaymentMethodOptionsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsCashapp>(
        PaymentIntentPaymentMethodOptionsCashapp.createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsCrypto>(
        PaymentIntentPaymentMethodOptionsCrypto.createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsCustomerBalance>(
            PaymentIntentPaymentMethodOptionsCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsEpsWrapper>(
            PaymentIntentPaymentMethodOptionsEpsWrapper
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsFpx>(
            PaymentIntentPaymentMethodOptionsFpx.createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsGiropay>(
        PaymentIntentPaymentMethodOptionsGiropay.createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsGrabpay>(
        PaymentIntentPaymentMethodOptionsGrabpay.createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsIdeal>(
        PaymentIntentPaymentMethodOptionsIdeal.createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsInteracPresent>(
            PaymentIntentPaymentMethodOptionsInteracPresent
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsKakaoPay>(
        PaymentIntentPaymentMethodOptionsKakaoPay.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsKlarna>(
        PaymentIntentPaymentMethodOptionsKlarna.createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsKonbini>(
        PaymentIntentPaymentMethodOptionsKonbini.createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsKrCard>(
        PaymentIntentPaymentMethodOptionsKrCard.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsLinkWrapper>(
            PaymentIntentPaymentMethodOptionsLinkWrapper
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsMbWay>(
        PaymentIntentPaymentMethodOptionsMbWay.createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsMobilepayWrapper>(
            PaymentIntentPaymentMethodOptionsMobilepayWrapper
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsMultibanco>(
            PaymentIntentPaymentMethodOptionsMultibanco
                .createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsNaverPay>(
        PaymentIntentPaymentMethodOptionsNaverPay.createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount = node
        .getObjectValue<PaymentIntentPaymentMethodOptionsNzBankAccountWrapper>(
            PaymentIntentPaymentMethodOptionsNzBankAccountWrapper
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsOxxo>(
            PaymentIntentPaymentMethodOptionsOxxo.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsP24>(
            PaymentIntentPaymentMethodOptionsP24.createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsPayByBank>(
            PaymentIntentPaymentMethodOptionsPayByBank
                .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsPayco>(
        PaymentIntentPaymentMethodOptionsPayco.createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsPaynow>(
        PaymentIntentPaymentMethodOptionsPaynow.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsPaypal>(
        PaymentIntentPaymentMethodOptionsPaypal.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsPaytoWrapper>(
            PaymentIntentPaymentMethodOptionsPaytoWrapper
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsPix>(
            PaymentIntentPaymentMethodOptionsPix.createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsPromptpay>(
            PaymentIntentPaymentMethodOptionsPromptpay
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsRevolutPay>(
            PaymentIntentPaymentMethodOptionsRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsSamsungPay>(
            PaymentIntentPaymentMethodOptionsSamsungPay
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsSatispay>(
        PaymentIntentPaymentMethodOptionsSatispay.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsSepaDebitWrapper>(
            PaymentIntentPaymentMethodOptionsSepaDebitWrapper
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsSofort>(
        PaymentIntentPaymentMethodOptionsSofort.createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsSwishWrapper>(
            PaymentIntentPaymentMethodOptionsSwishWrapper
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint = node.getObjectValue<
            PaymentIntentPaymentMethodOptionsTwint>(
        PaymentIntentPaymentMethodOptionsTwint.createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount = node
        .getObjectValue<PaymentIntentPaymentMethodOptionsUsBankAccountWrapper>(
            PaymentIntentPaymentMethodOptionsUsBankAccountWrapper
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsWechatPay>(
            PaymentIntentPaymentMethodOptionsWechatPay
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<PaymentIntentPaymentMethodOptionsZip>(
            PaymentIntentPaymentMethodOptionsZip.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsAcssDebitWrapper>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsAlipay>(
        'alipay', alipay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsAlma>(
        'alma', alma);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsAmazonPay>(
        'amazon_pay', amazonPay);
    writer
        .writeObjectValue<PaymentIntentPaymentMethodOptionsAuBecsDebitWrapper>(
            'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsBacsDebitWrapper>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsBillie>(
        'billie', billie);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsBlikWrapper>(
        'blik', blik);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsCardWrapper>(
        'card', card);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsEpsWrapper>(
        'eps', eps);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsFpx>('fpx', fpx);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsIdeal>(
        'ideal', ideal);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsLinkWrapper>(
        'link', link);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsMbWay>(
        'mb_way', mbWay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsMobilepayWrapper>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            PaymentIntentPaymentMethodOptionsNzBankAccountWrapper>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsP24>('p24', p24);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsPayByBank>(
        'pay_by_bank', payByBank);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsPayco>(
        'payco', payco);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsPaytoWrapper>(
        'payto', payto);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsPix>('pix', pix);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsSatispay>(
        'satispay', satispay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsSepaDebitWrapper>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsSofort>(
        'sofort', sofort);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsSwishWrapper>(
        'swish', swish);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsTwint>(
        'twint', twint);
    writer.writeObjectValue<
            PaymentIntentPaymentMethodOptionsUsBankAccountWrapper>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<PaymentIntentPaymentMethodOptionsZip>('zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
