// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_methods_post_request_body_acss_debit.dart';
import './payment_methods_post_request_body_affirm.dart';
import './payment_methods_post_request_body_afterpay_clearpay.dart';
import './payment_methods_post_request_body_alipay.dart';
import './payment_methods_post_request_body_allow_redisplay.dart';
import './payment_methods_post_request_body_alma.dart';
import './payment_methods_post_request_body_amazon_pay.dart';
import './payment_methods_post_request_body_au_becs_debit.dart';
import './payment_methods_post_request_body_bacs_debit.dart';
import './payment_methods_post_request_body_bancontact.dart';
import './payment_methods_post_request_body_billie.dart';
import './payment_methods_post_request_body_billing_details.dart';
import './payment_methods_post_request_body_blik.dart';
import './payment_methods_post_request_body_boleto.dart';
import './payment_methods_post_request_body_card.dart';
import './payment_methods_post_request_body_cashapp.dart';
import './payment_methods_post_request_body_crypto.dart';
import './payment_methods_post_request_body_custom.dart';
import './payment_methods_post_request_body_customer_balance.dart';
import './payment_methods_post_request_body_eps.dart';
import './payment_methods_post_request_body_fpx.dart';
import './payment_methods_post_request_body_giropay.dart';
import './payment_methods_post_request_body_grabpay.dart';
import './payment_methods_post_request_body_ideal.dart';
import './payment_methods_post_request_body_interac_present.dart';
import './payment_methods_post_request_body_kakao_pay.dart';
import './payment_methods_post_request_body_klarna.dart';
import './payment_methods_post_request_body_konbini.dart';
import './payment_methods_post_request_body_kr_card.dart';
import './payment_methods_post_request_body_link.dart';
import './payment_methods_post_request_body_mb_way.dart';
import './payment_methods_post_request_body_metadata.dart';
import './payment_methods_post_request_body_mobilepay.dart';
import './payment_methods_post_request_body_multibanco.dart';
import './payment_methods_post_request_body_naver_pay.dart';
import './payment_methods_post_request_body_nz_bank_account.dart';
import './payment_methods_post_request_body_oxxo.dart';
import './payment_methods_post_request_body_p24.dart';
import './payment_methods_post_request_body_pay_by_bank.dart';
import './payment_methods_post_request_body_payco.dart';
import './payment_methods_post_request_body_paynow.dart';
import './payment_methods_post_request_body_paypal.dart';
import './payment_methods_post_request_body_payto.dart';
import './payment_methods_post_request_body_pix.dart';
import './payment_methods_post_request_body_promptpay.dart';
import './payment_methods_post_request_body_radar_options.dart';
import './payment_methods_post_request_body_revolut_pay.dart';
import './payment_methods_post_request_body_samsung_pay.dart';
import './payment_methods_post_request_body_satispay.dart';
import './payment_methods_post_request_body_sepa_debit.dart';
import './payment_methods_post_request_body_sofort.dart';
import './payment_methods_post_request_body_swish.dart';
import './payment_methods_post_request_body_twint.dart';
import './payment_methods_post_request_body_type.dart';
import './payment_methods_post_request_body_us_bank_account.dart';
import './payment_methods_post_request_body_wechat_pay.dart';
import './payment_methods_post_request_body_zip.dart';

/// auto generated
class PaymentMethodsPostRequestBody implements Parsable {
  ///  If this is an `acss_debit` PaymentMethod, this hash contains details about the ACSS Debit payment method.
  PaymentMethodsPostRequestBodyAcssDebit? acssDebit;

  ///  If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
  PaymentMethodsPostRequestBodyAffirm? affirm;

  ///  If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
  PaymentMethodsPostRequestBodyAfterpayClearpay? afterpayClearpay;

  ///  If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
  PaymentMethodsPostRequestBodyAlipay? alipay;

  ///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to `unspecified`.
  PaymentMethodsPostRequestBodyAllowRedisplay? allowRedisplay;

  ///  If this is a Alma PaymentMethod, this hash contains details about the Alma payment method.
  PaymentMethodsPostRequestBodyAlma? alma;

  ///  If this is a AmazonPay PaymentMethod, this hash contains details about the AmazonPay payment method.
  PaymentMethodsPostRequestBodyAmazonPay? amazonPay;

  ///  If this is an `au_becs_debit` PaymentMethod, this hash contains details about the bank account.
  PaymentMethodsPostRequestBodyAuBecsDebit? auBecsDebit;

  ///  If this is a `bacs_debit` PaymentMethod, this hash contains details about the Bacs Direct Debit bank account.
  PaymentMethodsPostRequestBodyBacsDebit? bacsDebit;

  ///  If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
  PaymentMethodsPostRequestBodyBancontact? bancontact;

  ///  If this is a `billie` PaymentMethod, this hash contains details about the Billie payment method.
  PaymentMethodsPostRequestBodyBillie? billie;

  ///  Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
  PaymentMethodsPostRequestBodyBillingDetails? billingDetails;

  ///  If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
  PaymentMethodsPostRequestBodyBlik? blik;

  ///  If this is a `boleto` PaymentMethod, this hash contains details about the Boleto payment method.
  PaymentMethodsPostRequestBodyBoleto? boleto;

  ///  If this is a `card` PaymentMethod, this hash contains the user's card details. For backwards compatibility, you can alternatively provide a Stripe token (e.g., for Apple Pay, Amex Express Checkout, or legacy Checkout) into the card hash with format `card: {token: "tok_visa"}`. When providing a card number, you must meet the requirements for [PCI compliance](https://stripe.com/docs/security#validating-pci-compliance). We strongly recommend using Stripe.js instead of interacting with this API directly.
  PaymentMethodsPostRequestBodyCard? card;

  ///  If this is a `cashapp` PaymentMethod, this hash contains details about the Cash App Pay payment method.
  PaymentMethodsPostRequestBodyCashapp? cashapp;

  ///  If this is a Crypto PaymentMethod, this hash contains details about the Crypto payment method.
  PaymentMethodsPostRequestBodyCrypto? crypto;

  ///  If this is a `custom` PaymentMethod, this hash contains details about the Custom payment method.
  PaymentMethodsPostRequestBodyCustom? custom;

  ///  The `Customer` to whom the original PaymentMethod is attached.
  String? customer;

  ///  If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
  PaymentMethodsPostRequestBodyCustomerBalance? customerBalance;

  ///  If this is an `eps` PaymentMethod, this hash contains details about the EPS payment method.
  PaymentMethodsPostRequestBodyEps? eps;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
  PaymentMethodsPostRequestBodyFpx? fpx;

  ///  If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
  PaymentMethodsPostRequestBodyGiropay? giropay;

  ///  If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
  PaymentMethodsPostRequestBodyGrabpay? grabpay;

  ///  If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
  PaymentMethodsPostRequestBodyIdeal? ideal;

  ///  If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
  PaymentMethodsPostRequestBodyInteracPresent? interacPresent;

  ///  If this is a `kakao_pay` PaymentMethod, this hash contains details about the Kakao Pay payment method.
  PaymentMethodsPostRequestBodyKakaoPay? kakaoPay;

  ///  If this is a `klarna` PaymentMethod, this hash contains details about the Klarna payment method.
  PaymentMethodsPostRequestBodyKlarna? klarna;

  ///  If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
  PaymentMethodsPostRequestBodyKonbini? konbini;

  ///  If this is a `kr_card` PaymentMethod, this hash contains details about the Korean Card payment method.
  PaymentMethodsPostRequestBodyKrCard? krCard;

  ///  If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
  PaymentMethodsPostRequestBodyLink? link;

  ///  If this is a MB WAY PaymentMethod, this hash contains details about the MB WAY payment method.
  PaymentMethodsPostRequestBodyMbWay? mbWay;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  PaymentMethodsPostRequestBodyMetadata? metadata;

  ///  If this is a `mobilepay` PaymentMethod, this hash contains details about the MobilePay payment method.
  PaymentMethodsPostRequestBodyMobilepay? mobilepay;

  ///  If this is a `multibanco` PaymentMethod, this hash contains details about the Multibanco payment method.
  PaymentMethodsPostRequestBodyMultibanco? multibanco;

  ///  If this is a `naver_pay` PaymentMethod, this hash contains details about the Naver Pay payment method.
  PaymentMethodsPostRequestBodyNaverPay? naverPay;

  ///  If this is an nz_bank_account PaymentMethod, this hash contains details about the nz_bank_account payment method.
  PaymentMethodsPostRequestBodyNzBankAccount? nzBankAccount;

  ///  If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
  PaymentMethodsPostRequestBodyOxxo? oxxo;

  ///  If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
  PaymentMethodsPostRequestBodyP24? p24;

  ///  If this is a `pay_by_bank` PaymentMethod, this hash contains details about the PayByBank payment method.
  PaymentMethodsPostRequestBodyPayByBank? payByBank;

  ///  If this is a `payco` PaymentMethod, this hash contains details about the PAYCO payment method.
  PaymentMethodsPostRequestBodyPayco? payco;

  ///  The PaymentMethod to share.
  String? paymentMethod;

  ///  If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
  PaymentMethodsPostRequestBodyPaynow? paynow;

  ///  If this is a `paypal` PaymentMethod, this hash contains details about the PayPal payment method.
  PaymentMethodsPostRequestBodyPaypal? paypal;

  ///  If this is a `payto` PaymentMethod, this hash contains details about the PayTo payment method.
  PaymentMethodsPostRequestBodyPayto? payto;

  ///  If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
  PaymentMethodsPostRequestBodyPix? pix;

  ///  If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
  PaymentMethodsPostRequestBodyPromptpay? promptpay;

  ///  Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
  PaymentMethodsPostRequestBodyRadarOptions? radarOptions;

  ///  If this is a `revolut_pay` PaymentMethod, this hash contains details about the Revolut Pay payment method.
  PaymentMethodsPostRequestBodyRevolutPay? revolutPay;

  ///  If this is a `samsung_pay` PaymentMethod, this hash contains details about the SamsungPay payment method.
  PaymentMethodsPostRequestBodySamsungPay? samsungPay;

  ///  If this is a `satispay` PaymentMethod, this hash contains details about the Satispay payment method.
  PaymentMethodsPostRequestBodySatispay? satispay;

  ///  If this is a `sepa_debit` PaymentMethod, this hash contains details about the SEPA debit bank account.
  PaymentMethodsPostRequestBodySepaDebit? sepaDebit;

  ///  If this is a `sofort` PaymentMethod, this hash contains details about the SOFORT payment method.
  PaymentMethodsPostRequestBodySofort? sofort;

  ///  If this is a `swish` PaymentMethod, this hash contains details about the Swish payment method.
  PaymentMethodsPostRequestBodySwish? swish;

  ///  If this is a TWINT PaymentMethod, this hash contains details about the TWINT payment method.
  PaymentMethodsPostRequestBodyTwint? twint;

  ///  The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
  PaymentMethodsPostRequestBodyType? type_;

  ///  If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
  PaymentMethodsPostRequestBodyUsBankAccount? usBankAccount;

  ///  If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
  PaymentMethodsPostRequestBodyWechatPay? wechatPay;

  ///  If this is a `zip` PaymentMethod, this hash contains details about the Zip payment method.
  PaymentMethodsPostRequestBodyZip? zip;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            PaymentMethodsPostRequestBodyAcssDebit>(
        PaymentMethodsPostRequestBodyAcssDebit.createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<PaymentMethodsPostRequestBodyAffirm>(
            PaymentMethodsPostRequestBodyAffirm.createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<PaymentMethodsPostRequestBodyAfterpayClearpay>(
            PaymentMethodsPostRequestBodyAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<PaymentMethodsPostRequestBodyAlipay>(
            PaymentMethodsPostRequestBodyAlipay.createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<PaymentMethodsPostRequestBodyAllowRedisplay>(
            (stringValue) => PaymentMethodsPostRequestBodyAllowRedisplay.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<PaymentMethodsPostRequestBodyAlma>(
            PaymentMethodsPostRequestBodyAlma.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node.getObjectValue<
            PaymentMethodsPostRequestBodyAmazonPay>(
        PaymentMethodsPostRequestBodyAmazonPay.createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<PaymentMethodsPostRequestBodyAuBecsDebit>(
            PaymentMethodsPostRequestBodyAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node.getObjectValue<
            PaymentMethodsPostRequestBodyBacsDebit>(
        PaymentMethodsPostRequestBodyBacsDebit.createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node.getObjectValue<
            PaymentMethodsPostRequestBodyBancontact>(
        PaymentMethodsPostRequestBodyBancontact.createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<PaymentMethodsPostRequestBodyBillie>(
            PaymentMethodsPostRequestBodyBillie.createFromDiscriminatorValue);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<PaymentMethodsPostRequestBodyBillingDetails>(
            PaymentMethodsPostRequestBodyBillingDetails
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<PaymentMethodsPostRequestBodyBlik>(
            PaymentMethodsPostRequestBodyBlik.createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<PaymentMethodsPostRequestBodyBoleto>(
            PaymentMethodsPostRequestBodyBoleto.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentMethodsPostRequestBodyCard>(
            PaymentMethodsPostRequestBodyCard.createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<PaymentMethodsPostRequestBodyCashapp>(
            PaymentMethodsPostRequestBodyCashapp.createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<PaymentMethodsPostRequestBodyCrypto>(
            PaymentMethodsPostRequestBodyCrypto.createFromDiscriminatorValue);
    deserializerMap['custom'] = (node) => custom =
        node.getObjectValue<PaymentMethodsPostRequestBodyCustom>(
            PaymentMethodsPostRequestBodyCustom.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<PaymentMethodsPostRequestBodyCustomerBalance>(
            PaymentMethodsPostRequestBodyCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<PaymentMethodsPostRequestBodyEps>(
            PaymentMethodsPostRequestBodyEps.createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<PaymentMethodsPostRequestBodyFpx>(
            PaymentMethodsPostRequestBodyFpx.createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<PaymentMethodsPostRequestBodyGiropay>(
            PaymentMethodsPostRequestBodyGiropay.createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<PaymentMethodsPostRequestBodyGrabpay>(
            PaymentMethodsPostRequestBodyGrabpay.createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<PaymentMethodsPostRequestBodyIdeal>(
            PaymentMethodsPostRequestBodyIdeal.createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<PaymentMethodsPostRequestBodyInteracPresent>(
            PaymentMethodsPostRequestBodyInteracPresent
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<PaymentMethodsPostRequestBodyKakaoPay>(
            PaymentMethodsPostRequestBodyKakaoPay.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<PaymentMethodsPostRequestBodyKlarna>(
            PaymentMethodsPostRequestBodyKlarna.createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<PaymentMethodsPostRequestBodyKonbini>(
            PaymentMethodsPostRequestBodyKonbini.createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<PaymentMethodsPostRequestBodyKrCard>(
            PaymentMethodsPostRequestBodyKrCard.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodsPostRequestBodyLink>(
            PaymentMethodsPostRequestBodyLink.createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<PaymentMethodsPostRequestBodyMbWay>(
            PaymentMethodsPostRequestBodyMbWay.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentMethodsPostRequestBodyMetadata>(
            PaymentMethodsPostRequestBodyMetadata.createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node.getObjectValue<
            PaymentMethodsPostRequestBodyMobilepay>(
        PaymentMethodsPostRequestBodyMobilepay.createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node.getObjectValue<
            PaymentMethodsPostRequestBodyMultibanco>(
        PaymentMethodsPostRequestBodyMultibanco.createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<PaymentMethodsPostRequestBodyNaverPay>(
            PaymentMethodsPostRequestBodyNaverPay.createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<PaymentMethodsPostRequestBodyNzBankAccount>(
            PaymentMethodsPostRequestBodyNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<PaymentMethodsPostRequestBodyOxxo>(
            PaymentMethodsPostRequestBodyOxxo.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<PaymentMethodsPostRequestBodyP24>(
            PaymentMethodsPostRequestBodyP24.createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank = node.getObjectValue<
            PaymentMethodsPostRequestBodyPayByBank>(
        PaymentMethodsPostRequestBodyPayByBank.createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<PaymentMethodsPostRequestBodyPayco>(
            PaymentMethodsPostRequestBodyPayco.createFromDiscriminatorValue);
    deserializerMap['payment_method'] =
        (node) => paymentMethod = node.getStringValue();
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<PaymentMethodsPostRequestBodyPaynow>(
            PaymentMethodsPostRequestBodyPaynow.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<PaymentMethodsPostRequestBodyPaypal>(
            PaymentMethodsPostRequestBodyPaypal.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<PaymentMethodsPostRequestBodyPayto>(
            PaymentMethodsPostRequestBodyPayto.createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<PaymentMethodsPostRequestBodyPix>(
            PaymentMethodsPostRequestBodyPix.createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node.getObjectValue<
            PaymentMethodsPostRequestBodyPromptpay>(
        PaymentMethodsPostRequestBodyPromptpay.createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<PaymentMethodsPostRequestBodyRadarOptions>(
            PaymentMethodsPostRequestBodyRadarOptions
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node.getObjectValue<
            PaymentMethodsPostRequestBodyRevolutPay>(
        PaymentMethodsPostRequestBodyRevolutPay.createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node.getObjectValue<
            PaymentMethodsPostRequestBodySamsungPay>(
        PaymentMethodsPostRequestBodySamsungPay.createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<PaymentMethodsPostRequestBodySatispay>(
            PaymentMethodsPostRequestBodySatispay.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getObjectValue<
            PaymentMethodsPostRequestBodySepaDebit>(
        PaymentMethodsPostRequestBodySepaDebit.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<PaymentMethodsPostRequestBodySofort>(
            PaymentMethodsPostRequestBodySofort.createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<PaymentMethodsPostRequestBodySwish>(
            PaymentMethodsPostRequestBodySwish.createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<PaymentMethodsPostRequestBodyTwint>(
            PaymentMethodsPostRequestBodyTwint.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentMethodsPostRequestBodyType>((stringValue) =>
            PaymentMethodsPostRequestBodyType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<PaymentMethodsPostRequestBodyUsBankAccount>(
            PaymentMethodsPostRequestBodyUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node.getObjectValue<
            PaymentMethodsPostRequestBodyWechatPay>(
        PaymentMethodsPostRequestBodyWechatPay.createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<PaymentMethodsPostRequestBodyZip>(
            PaymentMethodsPostRequestBodyZip.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodsPostRequestBodyAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyAlipay>(
        'alipay', alipay);
    writer.writeEnumValue<PaymentMethodsPostRequestBodyAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyAlma>('alma', alma);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBillie>(
        'billie', billie);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBillingDetails>(
        'billing_details', billingDetails);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBlik>('blik', blik);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyCard>('card', card);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyCustom>(
        'custom', custom);
    writer.writeStringValue('customer', customer);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyEps>('eps', eps);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyFpx>('fpx', fpx);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyGiropay>(
        'giropay', giropay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyIdeal>('ideal', ideal);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyLink>('link', link);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyMbWay>(
        'mb_way', mbWay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyMetadata>(
        'metadata', metadata);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyOxxo>('oxxo', oxxo);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyP24>('p24', p24);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyPayByBank>(
        'pay_by_bank', payByBank);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyPayco>('payco', payco);
    writer.writeStringValue('payment_method', paymentMethod);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyPayto>('payto', payto);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyPix>('pix', pix);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyRadarOptions>(
        'radar_options', radarOptions);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodySamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodySatispay>(
        'satispay', satispay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodySepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<PaymentMethodsPostRequestBodySofort>(
        'sofort', sofort);
    writer.writeObjectValue<PaymentMethodsPostRequestBodySwish>('swish', swish);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyTwint>('twint', twint);
    writer.writeEnumValue<PaymentMethodsPostRequestBodyType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<PaymentMethodsPostRequestBodyZip>('zip', zip);
  }
}
