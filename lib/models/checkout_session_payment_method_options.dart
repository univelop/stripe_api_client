// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkout_acss_debit_payment_method_options.dart';
import './checkout_affirm_payment_method_options.dart';
import './checkout_afterpay_clearpay_payment_method_options.dart';
import './checkout_alipay_payment_method_options.dart';
import './checkout_alma_payment_method_options.dart';
import './checkout_amazon_pay_payment_method_options.dart';
import './checkout_au_becs_debit_payment_method_options.dart';
import './checkout_bacs_debit_payment_method_options.dart';
import './checkout_bancontact_payment_method_options.dart';
import './checkout_billie_payment_method_options.dart';
import './checkout_boleto_payment_method_options.dart';
import './checkout_card_payment_method_options.dart';
import './checkout_cashapp_payment_method_options.dart';
import './checkout_customer_balance_payment_method_options.dart';
import './checkout_eps_payment_method_options.dart';
import './checkout_fpx_payment_method_options.dart';
import './checkout_giropay_payment_method_options.dart';
import './checkout_grab_pay_payment_method_options.dart';
import './checkout_ideal_payment_method_options.dart';
import './checkout_kakao_pay_payment_method_options.dart';
import './checkout_klarna_payment_method_options.dart';
import './checkout_konbini_payment_method_options.dart';
import './checkout_kr_card_payment_method_options.dart';
import './checkout_link_payment_method_options.dart';
import './checkout_mobilepay_payment_method_options.dart';
import './checkout_multibanco_payment_method_options.dart';
import './checkout_naver_pay_payment_method_options.dart';
import './checkout_oxxo_payment_method_options.dart';
import './checkout_p24_payment_method_options.dart';
import './checkout_payco_payment_method_options.dart';
import './checkout_paynow_payment_method_options.dart';
import './checkout_paypal_payment_method_options.dart';
import './checkout_payto_payment_method_options.dart';
import './checkout_pix_payment_method_options.dart';
import './checkout_revolut_pay_payment_method_options.dart';
import './checkout_samsung_pay_payment_method_options.dart';
import './checkout_satispay_payment_method_options.dart';
import './checkout_sepa_debit_payment_method_options.dart';
import './checkout_sofort_payment_method_options.dart';
import './checkout_swish_payment_method_options.dart';
import './checkout_twint_payment_method_options.dart';
import './checkout_us_bank_account_payment_method_options.dart';

/// auto generated
class CheckoutSessionPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  CheckoutAcssDebitPaymentMethodOptions? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  CheckoutAffirmPaymentMethodOptions? affirm;

  ///  The afterpay_clearpay property
  CheckoutAfterpayClearpayPaymentMethodOptions? afterpayClearpay;

  ///  The alipay property
  CheckoutAlipayPaymentMethodOptions? alipay;

  ///  The alma property
  CheckoutAlmaPaymentMethodOptions? alma;

  ///  The amazon_pay property
  CheckoutAmazonPayPaymentMethodOptions? amazonPay;

  ///  The au_becs_debit property
  CheckoutAuBecsDebitPaymentMethodOptions? auBecsDebit;

  ///  The bacs_debit property
  CheckoutBacsDebitPaymentMethodOptions? bacsDebit;

  ///  The bancontact property
  CheckoutBancontactPaymentMethodOptions? bancontact;

  ///  The billie property
  CheckoutBilliePaymentMethodOptions? billie;

  ///  The boleto property
  CheckoutBoletoPaymentMethodOptions? boleto;

  ///  The card property
  CheckoutCardPaymentMethodOptions? card;

  ///  The cashapp property
  CheckoutCashappPaymentMethodOptions? cashapp;

  ///  The customer_balance property
  CheckoutCustomerBalancePaymentMethodOptions? customerBalance;

  ///  The eps property
  CheckoutEpsPaymentMethodOptions? eps;

  ///  The fpx property
  CheckoutFpxPaymentMethodOptions? fpx;

  ///  The giropay property
  CheckoutGiropayPaymentMethodOptions? giropay;

  ///  The grabpay property
  CheckoutGrabPayPaymentMethodOptions? grabpay;

  ///  The ideal property
  CheckoutIdealPaymentMethodOptions? ideal;

  ///  The kakao_pay property
  CheckoutKakaoPayPaymentMethodOptions? kakaoPay;

  ///  The klarna property
  CheckoutKlarnaPaymentMethodOptions? klarna;

  ///  The konbini property
  CheckoutKonbiniPaymentMethodOptions? konbini;

  ///  The kr_card property
  CheckoutKrCardPaymentMethodOptions? krCard;

  ///  The link property
  CheckoutLinkPaymentMethodOptions? link;

  ///  The mobilepay property
  CheckoutMobilepayPaymentMethodOptions? mobilepay;

  ///  The multibanco property
  CheckoutMultibancoPaymentMethodOptions? multibanco;

  ///  The naver_pay property
  CheckoutNaverPayPaymentMethodOptions? naverPay;

  ///  The oxxo property
  CheckoutOxxoPaymentMethodOptions? oxxo;

  ///  The p24 property
  CheckoutP24PaymentMethodOptions? p24;

  ///  The payco property
  CheckoutPaycoPaymentMethodOptions? payco;

  ///  The paynow property
  CheckoutPaynowPaymentMethodOptions? paynow;

  ///  The paypal property
  CheckoutPaypalPaymentMethodOptions? paypal;

  ///  The payto property
  CheckoutPaytoPaymentMethodOptions? payto;

  ///  The pix property
  CheckoutPixPaymentMethodOptions? pix;

  ///  The revolut_pay property
  CheckoutRevolutPayPaymentMethodOptions? revolutPay;

  ///  The samsung_pay property
  CheckoutSamsungPayPaymentMethodOptions? samsungPay;

  ///  The satispay property
  CheckoutSatispayPaymentMethodOptions? satispay;

  ///  The sepa_debit property
  CheckoutSepaDebitPaymentMethodOptions? sepaDebit;

  ///  The sofort property
  CheckoutSofortPaymentMethodOptions? sofort;

  ///  The swish property
  CheckoutSwishPaymentMethodOptions? swish;

  ///  The twint property
  CheckoutTwintPaymentMethodOptions? twint;

  ///  The us_bank_account property
  CheckoutUsBankAccountPaymentMethodOptions? usBankAccount;

  /// Instantiates a new [CheckoutSessionPaymentMethodOptions] and sets the default values.
  CheckoutSessionPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CheckoutSessionPaymentMethodOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CheckoutSessionPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<CheckoutAcssDebitPaymentMethodOptions>(
            CheckoutAcssDebitPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<CheckoutAffirmPaymentMethodOptions>(
            CheckoutAffirmPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<CheckoutAfterpayClearpayPaymentMethodOptions>(
            CheckoutAfterpayClearpayPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<CheckoutAlipayPaymentMethodOptions>(
            CheckoutAlipayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<CheckoutAlmaPaymentMethodOptions>(
            CheckoutAlmaPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<CheckoutAmazonPayPaymentMethodOptions>(
            CheckoutAmazonPayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<CheckoutAuBecsDebitPaymentMethodOptions>(
            CheckoutAuBecsDebitPaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<CheckoutBacsDebitPaymentMethodOptions>(
            CheckoutBacsDebitPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            CheckoutBancontactPaymentMethodOptions>(
        CheckoutBancontactPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<CheckoutBilliePaymentMethodOptions>(
            CheckoutBilliePaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<CheckoutBoletoPaymentMethodOptions>(
            CheckoutBoletoPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<CheckoutCardPaymentMethodOptions>(
            CheckoutCardPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<CheckoutCashappPaymentMethodOptions>(
            CheckoutCashappPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<CheckoutCustomerBalancePaymentMethodOptions>(
            CheckoutCustomerBalancePaymentMethodOptions
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<CheckoutEpsPaymentMethodOptions>(
            CheckoutEpsPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<CheckoutFpxPaymentMethodOptions>(
            CheckoutFpxPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<CheckoutGiropayPaymentMethodOptions>(
            CheckoutGiropayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<CheckoutGrabPayPaymentMethodOptions>(
            CheckoutGrabPayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<CheckoutIdealPaymentMethodOptions>(
            CheckoutIdealPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<CheckoutKakaoPayPaymentMethodOptions>(
            CheckoutKakaoPayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<CheckoutKlarnaPaymentMethodOptions>(
            CheckoutKlarnaPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<CheckoutKonbiniPaymentMethodOptions>(
            CheckoutKonbiniPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<CheckoutKrCardPaymentMethodOptions>(
            CheckoutKrCardPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<CheckoutLinkPaymentMethodOptions>(
            CheckoutLinkPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay =
        node.getObjectValue<CheckoutMobilepayPaymentMethodOptions>(
            CheckoutMobilepayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node.getObjectValue<
            CheckoutMultibancoPaymentMethodOptions>(
        CheckoutMultibancoPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<CheckoutNaverPayPaymentMethodOptions>(
            CheckoutNaverPayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<CheckoutOxxoPaymentMethodOptions>(
            CheckoutOxxoPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<CheckoutP24PaymentMethodOptions>(
            CheckoutP24PaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<CheckoutPaycoPaymentMethodOptions>(
            CheckoutPaycoPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<CheckoutPaynowPaymentMethodOptions>(
            CheckoutPaynowPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<CheckoutPaypalPaymentMethodOptions>(
            CheckoutPaypalPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<CheckoutPaytoPaymentMethodOptions>(
            CheckoutPaytoPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<CheckoutPixPaymentMethodOptions>(
            CheckoutPixPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node.getObjectValue<
            CheckoutRevolutPayPaymentMethodOptions>(
        CheckoutRevolutPayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node.getObjectValue<
            CheckoutSamsungPayPaymentMethodOptions>(
        CheckoutSamsungPayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<CheckoutSatispayPaymentMethodOptions>(
            CheckoutSatispayPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<CheckoutSepaDebitPaymentMethodOptions>(
            CheckoutSepaDebitPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<CheckoutSofortPaymentMethodOptions>(
            CheckoutSofortPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<CheckoutSwishPaymentMethodOptions>(
            CheckoutSwishPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<CheckoutTwintPaymentMethodOptions>(
            CheckoutTwintPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<CheckoutUsBankAccountPaymentMethodOptions>(
            CheckoutUsBankAccountPaymentMethodOptions
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CheckoutAcssDebitPaymentMethodOptions>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<CheckoutAffirmPaymentMethodOptions>(
        'affirm', affirm);
    writer.writeObjectValue<CheckoutAfterpayClearpayPaymentMethodOptions>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<CheckoutAlipayPaymentMethodOptions>(
        'alipay', alipay);
    writer.writeObjectValue<CheckoutAlmaPaymentMethodOptions>('alma', alma);
    writer.writeObjectValue<CheckoutAmazonPayPaymentMethodOptions>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<CheckoutAuBecsDebitPaymentMethodOptions>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<CheckoutBacsDebitPaymentMethodOptions>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<CheckoutBancontactPaymentMethodOptions>(
        'bancontact', bancontact);
    writer.writeObjectValue<CheckoutBilliePaymentMethodOptions>(
        'billie', billie);
    writer.writeObjectValue<CheckoutBoletoPaymentMethodOptions>(
        'boleto', boleto);
    writer.writeObjectValue<CheckoutCardPaymentMethodOptions>('card', card);
    writer.writeObjectValue<CheckoutCashappPaymentMethodOptions>(
        'cashapp', cashapp);
    writer.writeObjectValue<CheckoutCustomerBalancePaymentMethodOptions>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<CheckoutEpsPaymentMethodOptions>('eps', eps);
    writer.writeObjectValue<CheckoutFpxPaymentMethodOptions>('fpx', fpx);
    writer.writeObjectValue<CheckoutGiropayPaymentMethodOptions>(
        'giropay', giropay);
    writer.writeObjectValue<CheckoutGrabPayPaymentMethodOptions>(
        'grabpay', grabpay);
    writer.writeObjectValue<CheckoutIdealPaymentMethodOptions>('ideal', ideal);
    writer.writeObjectValue<CheckoutKakaoPayPaymentMethodOptions>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<CheckoutKlarnaPaymentMethodOptions>(
        'klarna', klarna);
    writer.writeObjectValue<CheckoutKonbiniPaymentMethodOptions>(
        'konbini', konbini);
    writer.writeObjectValue<CheckoutKrCardPaymentMethodOptions>(
        'kr_card', krCard);
    writer.writeObjectValue<CheckoutLinkPaymentMethodOptions>('link', link);
    writer.writeObjectValue<CheckoutMobilepayPaymentMethodOptions>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<CheckoutMultibancoPaymentMethodOptions>(
        'multibanco', multibanco);
    writer.writeObjectValue<CheckoutNaverPayPaymentMethodOptions>(
        'naver_pay', naverPay);
    writer.writeObjectValue<CheckoutOxxoPaymentMethodOptions>('oxxo', oxxo);
    writer.writeObjectValue<CheckoutP24PaymentMethodOptions>('p24', p24);
    writer.writeObjectValue<CheckoutPaycoPaymentMethodOptions>('payco', payco);
    writer.writeObjectValue<CheckoutPaynowPaymentMethodOptions>(
        'paynow', paynow);
    writer.writeObjectValue<CheckoutPaypalPaymentMethodOptions>(
        'paypal', paypal);
    writer.writeObjectValue<CheckoutPaytoPaymentMethodOptions>('payto', payto);
    writer.writeObjectValue<CheckoutPixPaymentMethodOptions>('pix', pix);
    writer.writeObjectValue<CheckoutRevolutPayPaymentMethodOptions>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<CheckoutSamsungPayPaymentMethodOptions>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<CheckoutSatispayPaymentMethodOptions>(
        'satispay', satispay);
    writer.writeObjectValue<CheckoutSepaDebitPaymentMethodOptions>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<CheckoutSofortPaymentMethodOptions>(
        'sofort', sofort);
    writer.writeObjectValue<CheckoutSwishPaymentMethodOptions>('swish', swish);
    writer.writeObjectValue<CheckoutTwintPaymentMethodOptions>('twint', twint);
    writer.writeObjectValue<CheckoutUsBankAccountPaymentMethodOptions>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
