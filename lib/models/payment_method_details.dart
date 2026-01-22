// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_alipay_details.dart';
import './payment_method_details_ach_credit_transfer.dart';
import './payment_method_details_ach_debit.dart';
import './payment_method_details_acss_debit.dart';
import './payment_method_details_affirm.dart';
import './payment_method_details_afterpay_clearpay.dart';
import './payment_method_details_alma.dart';
import './payment_method_details_amazon_pay.dart';
import './payment_method_details_au_becs_debit.dart';
import './payment_method_details_bacs_debit.dart';
import './payment_method_details_bancontact.dart';
import './payment_method_details_billie.dart';
import './payment_method_details_blik.dart';
import './payment_method_details_boleto.dart';
import './payment_method_details_card.dart';
import './payment_method_details_card_present.dart';
import './payment_method_details_cashapp.dart';
import './payment_method_details_crypto.dart';
import './payment_method_details_customer_balance.dart';
import './payment_method_details_eps.dart';
import './payment_method_details_fpx.dart';
import './payment_method_details_giropay.dart';
import './payment_method_details_grabpay.dart';
import './payment_method_details_ideal.dart';
import './payment_method_details_interac_present.dart';
import './payment_method_details_kakao_pay.dart';
import './payment_method_details_klarna.dart';
import './payment_method_details_konbini.dart';
import './payment_method_details_kr_card.dart';
import './payment_method_details_link.dart';
import './payment_method_details_mb_way.dart';
import './payment_method_details_mobilepay.dart';
import './payment_method_details_multibanco.dart';
import './payment_method_details_naver_pay.dart';
import './payment_method_details_nz_bank_account.dart';
import './payment_method_details_oxxo.dart';
import './payment_method_details_p24.dart';
import './payment_method_details_pay_by_bank.dart';
import './payment_method_details_payco.dart';
import './payment_method_details_paynow.dart';
import './payment_method_details_paypal.dart';
import './payment_method_details_payto.dart';
import './payment_method_details_pix.dart';
import './payment_method_details_promptpay.dart';
import './payment_method_details_revolut_pay.dart';
import './payment_method_details_samsung_pay.dart';
import './payment_method_details_satispay.dart';
import './payment_method_details_sepa_debit.dart';
import './payment_method_details_sofort.dart';
import './payment_method_details_stripe_account.dart';
import './payment_method_details_swish.dart';
import './payment_method_details_twint.dart';
import './payment_method_details_us_bank_account.dart';
import './payment_method_details_wechat.dart';
import './payment_method_details_wechat_pay.dart';
import './payment_method_details_zip.dart';

/// auto generated
class PaymentMethodDetails implements AdditionalDataHolder, Parsable {
  ///  The ach_credit_transfer property
  PaymentMethodDetailsAchCreditTransfer? achCreditTransfer;

  ///  The ach_debit property
  PaymentMethodDetailsAchDebit? achDebit;

  ///  The acss_debit property
  PaymentMethodDetailsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  PaymentMethodDetailsAffirm? affirm;

  ///  The afterpay_clearpay property
  PaymentMethodDetailsAfterpayClearpay? afterpayClearpay;

  ///  The alipay property
  PaymentFlowsPrivatePaymentMethodsAlipayDetails? alipay;

  ///  The alma property
  PaymentMethodDetailsAlma? alma;

  ///  The amazon_pay property
  PaymentMethodDetailsAmazonPay? amazonPay;

  ///  The au_becs_debit property
  PaymentMethodDetailsAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  PaymentMethodDetailsBacsDebit? bacsDebit;

  ///  The bancontact property
  PaymentMethodDetailsBancontact? bancontact;

  ///  The billie property
  PaymentMethodDetailsBillie? billie;

  ///  The blik property
  PaymentMethodDetailsBlik? blik;

  ///  The boleto property
  PaymentMethodDetailsBoleto? boleto;

  ///  The card property
  PaymentMethodDetailsCard? card;

  ///  The card_present property
  PaymentMethodDetailsCardPresent? cardPresent;

  ///  The cashapp property
  PaymentMethodDetailsCashapp? cashapp;

  ///  The crypto property
  PaymentMethodDetailsCrypto? crypto;

  ///  The customer_balance property
  PaymentMethodDetailsCustomerBalance? customerBalance;

  ///  The eps property
  PaymentMethodDetailsEps? eps;

  ///  The fpx property
  PaymentMethodDetailsFpx? fpx;

  ///  The giropay property
  PaymentMethodDetailsGiropay? giropay;

  ///  The grabpay property
  PaymentMethodDetailsGrabpay? grabpay;

  ///  The ideal property
  PaymentMethodDetailsIdeal? ideal;

  ///  The interac_present property
  PaymentMethodDetailsInteracPresent? interacPresent;

  ///  The kakao_pay property
  PaymentMethodDetailsKakaoPay? kakaoPay;

  ///  The klarna property
  PaymentMethodDetailsKlarna? klarna;

  ///  The konbini property
  PaymentMethodDetailsKonbini? konbini;

  ///  The kr_card property
  PaymentMethodDetailsKrCard? krCard;

  ///  The link property
  PaymentMethodDetailsLink? link;

  ///  The mb_way property
  PaymentMethodDetailsMbWay? mbWay;

  ///  The mobilepay property
  PaymentMethodDetailsMobilepay? mobilepay;

  ///  The multibanco property
  PaymentMethodDetailsMultibanco? multibanco;

  ///  The naver_pay property
  PaymentMethodDetailsNaverPay? naverPay;

  ///  The nz_bank_account property
  PaymentMethodDetailsNzBankAccount? nzBankAccount;

  ///  The oxxo property
  PaymentMethodDetailsOxxo? oxxo;

  ///  The p24 property
  PaymentMethodDetailsP24? p24;

  ///  The pay_by_bank property
  PaymentMethodDetailsPayByBank? payByBank;

  ///  The payco property
  PaymentMethodDetailsPayco? payco;

  ///  The paynow property
  PaymentMethodDetailsPaynow? paynow;

  ///  The paypal property
  PaymentMethodDetailsPaypal? paypal;

  ///  The payto property
  PaymentMethodDetailsPayto? payto;

  ///  The pix property
  PaymentMethodDetailsPix? pix;

  ///  The promptpay property
  PaymentMethodDetailsPromptpay? promptpay;

  ///  The revolut_pay property
  PaymentMethodDetailsRevolutPay? revolutPay;

  ///  The samsung_pay property
  PaymentMethodDetailsSamsungPay? samsungPay;

  ///  The satispay property
  PaymentMethodDetailsSatispay? satispay;

  ///  The sepa_debit property
  PaymentMethodDetailsSepaDebit? sepaDebit;

  ///  The sofort property
  PaymentMethodDetailsSofort? sofort;

  ///  The stripe_account property
  PaymentMethodDetailsStripeAccount? stripeAccount;

  ///  The swish property
  PaymentMethodDetailsSwish? swish;

  ///  The twint property
  PaymentMethodDetailsTwint? twint;

  ///  The type of transaction-specific details of the payment method used in the payment. See [PaymentMethod.type](https://docs.stripe.com/api/payment_methods/object#payment_method_object-type) for the full list of possible types.An additional hash is included on `payment_method_details` with a name matching this value.It contains information specific to the payment method.
  String? type_;

  ///  The us_bank_account property
  PaymentMethodDetailsUsBankAccount? usBankAccount;

  ///  The wechat property
  PaymentMethodDetailsWechat? wechat;

  ///  The wechat_pay property
  PaymentMethodDetailsWechatPay? wechatPay;

  ///  The zip property
  PaymentMethodDetailsZip? zip;

  /// Instantiates a new [PaymentMethodDetails] and sets the default values.
  PaymentMethodDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['ach_credit_transfer'] = (node) => achCreditTransfer =
        node.getObjectValue<PaymentMethodDetailsAchCreditTransfer>(
            PaymentMethodDetailsAchCreditTransfer.createFromDiscriminatorValue);
    deserializerMap['ach_debit'] = (node) => achDebit =
        node.getObjectValue<PaymentMethodDetailsAchDebit>(
            PaymentMethodDetailsAchDebit.createFromDiscriminatorValue);
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<PaymentMethodDetailsAcssDebit>(
            PaymentMethodDetailsAcssDebit.createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<PaymentMethodDetailsAffirm>(
            PaymentMethodDetailsAffirm.createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<PaymentMethodDetailsAfterpayClearpay>(
            PaymentMethodDetailsAfterpayClearpay.createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<PaymentFlowsPrivatePaymentMethodsAlipayDetails>(
            PaymentFlowsPrivatePaymentMethodsAlipayDetails
                .createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<PaymentMethodDetailsAlma>(
            PaymentMethodDetailsAlma.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<PaymentMethodDetailsAmazonPay>(
            PaymentMethodDetailsAmazonPay.createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<PaymentMethodDetailsAuBecsDebit>(
            PaymentMethodDetailsAuBecsDebit.createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<PaymentMethodDetailsBacsDebit>(
            PaymentMethodDetailsBacsDebit.createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<PaymentMethodDetailsBancontact>(
            PaymentMethodDetailsBancontact.createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<PaymentMethodDetailsBillie>(
            PaymentMethodDetailsBillie.createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<PaymentMethodDetailsBlik>(
            PaymentMethodDetailsBlik.createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<PaymentMethodDetailsBoleto>(
            PaymentMethodDetailsBoleto.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentMethodDetailsCard>(
            PaymentMethodDetailsCard.createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<PaymentMethodDetailsCardPresent>(
            PaymentMethodDetailsCardPresent.createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<PaymentMethodDetailsCashapp>(
            PaymentMethodDetailsCashapp.createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<PaymentMethodDetailsCrypto>(
            PaymentMethodDetailsCrypto.createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<PaymentMethodDetailsCustomerBalance>(
            PaymentMethodDetailsCustomerBalance.createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<PaymentMethodDetailsEps>(
            PaymentMethodDetailsEps.createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<PaymentMethodDetailsFpx>(
            PaymentMethodDetailsFpx.createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<PaymentMethodDetailsGiropay>(
            PaymentMethodDetailsGiropay.createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<PaymentMethodDetailsGrabpay>(
            PaymentMethodDetailsGrabpay.createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<PaymentMethodDetailsIdeal>(
            PaymentMethodDetailsIdeal.createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<PaymentMethodDetailsInteracPresent>(
            PaymentMethodDetailsInteracPresent.createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<PaymentMethodDetailsKakaoPay>(
            PaymentMethodDetailsKakaoPay.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<PaymentMethodDetailsKlarna>(
            PaymentMethodDetailsKlarna.createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<PaymentMethodDetailsKonbini>(
            PaymentMethodDetailsKonbini.createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<PaymentMethodDetailsKrCard>(
            PaymentMethodDetailsKrCard.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodDetailsLink>(
            PaymentMethodDetailsLink.createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<PaymentMethodDetailsMbWay>(
            PaymentMethodDetailsMbWay.createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay =
        node.getObjectValue<PaymentMethodDetailsMobilepay>(
            PaymentMethodDetailsMobilepay.createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<PaymentMethodDetailsMultibanco>(
            PaymentMethodDetailsMultibanco.createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<PaymentMethodDetailsNaverPay>(
            PaymentMethodDetailsNaverPay.createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<PaymentMethodDetailsNzBankAccount>(
            PaymentMethodDetailsNzBankAccount.createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<PaymentMethodDetailsOxxo>(
            PaymentMethodDetailsOxxo.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<PaymentMethodDetailsP24>(
            PaymentMethodDetailsP24.createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank =
        node.getObjectValue<PaymentMethodDetailsPayByBank>(
            PaymentMethodDetailsPayByBank.createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<PaymentMethodDetailsPayco>(
            PaymentMethodDetailsPayco.createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<PaymentMethodDetailsPaynow>(
            PaymentMethodDetailsPaynow.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<PaymentMethodDetailsPaypal>(
            PaymentMethodDetailsPaypal.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<PaymentMethodDetailsPayto>(
            PaymentMethodDetailsPayto.createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<PaymentMethodDetailsPix>(
            PaymentMethodDetailsPix.createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay =
        node.getObjectValue<PaymentMethodDetailsPromptpay>(
            PaymentMethodDetailsPromptpay.createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay =
        node.getObjectValue<PaymentMethodDetailsRevolutPay>(
            PaymentMethodDetailsRevolutPay.createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay =
        node.getObjectValue<PaymentMethodDetailsSamsungPay>(
            PaymentMethodDetailsSamsungPay.createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<PaymentMethodDetailsSatispay>(
            PaymentMethodDetailsSatispay.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<PaymentMethodDetailsSepaDebit>(
            PaymentMethodDetailsSepaDebit.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<PaymentMethodDetailsSofort>(
            PaymentMethodDetailsSofort.createFromDiscriminatorValue);
    deserializerMap['stripe_account'] = (node) => stripeAccount =
        node.getObjectValue<PaymentMethodDetailsStripeAccount>(
            PaymentMethodDetailsStripeAccount.createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<PaymentMethodDetailsSwish>(
            PaymentMethodDetailsSwish.createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<PaymentMethodDetailsTwint>(
            PaymentMethodDetailsTwint.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<PaymentMethodDetailsUsBankAccount>(
            PaymentMethodDetailsUsBankAccount.createFromDiscriminatorValue);
    deserializerMap['wechat'] = (node) => wechat =
        node.getObjectValue<PaymentMethodDetailsWechat>(
            PaymentMethodDetailsWechat.createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay =
        node.getObjectValue<PaymentMethodDetailsWechatPay>(
            PaymentMethodDetailsWechatPay.createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<PaymentMethodDetailsZip>(
            PaymentMethodDetailsZip.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodDetailsAchCreditTransfer>(
        'ach_credit_transfer', achCreditTransfer);
    writer.writeObjectValue<PaymentMethodDetailsAchDebit>(
        'ach_debit', achDebit);
    writer.writeObjectValue<PaymentMethodDetailsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<PaymentMethodDetailsAffirm>('affirm', affirm);
    writer.writeObjectValue<PaymentMethodDetailsAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<PaymentFlowsPrivatePaymentMethodsAlipayDetails>(
        'alipay', alipay);
    writer.writeObjectValue<PaymentMethodDetailsAlma>('alma', alma);
    writer.writeObjectValue<PaymentMethodDetailsAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<PaymentMethodDetailsAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<PaymentMethodDetailsBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<PaymentMethodDetailsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<PaymentMethodDetailsBillie>('billie', billie);
    writer.writeObjectValue<PaymentMethodDetailsBlik>('blik', blik);
    writer.writeObjectValue<PaymentMethodDetailsBoleto>('boleto', boleto);
    writer.writeObjectValue<PaymentMethodDetailsCard>('card', card);
    writer.writeObjectValue<PaymentMethodDetailsCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<PaymentMethodDetailsCashapp>('cashapp', cashapp);
    writer.writeObjectValue<PaymentMethodDetailsCrypto>('crypto', crypto);
    writer.writeObjectValue<PaymentMethodDetailsCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<PaymentMethodDetailsEps>('eps', eps);
    writer.writeObjectValue<PaymentMethodDetailsFpx>('fpx', fpx);
    writer.writeObjectValue<PaymentMethodDetailsGiropay>('giropay', giropay);
    writer.writeObjectValue<PaymentMethodDetailsGrabpay>('grabpay', grabpay);
    writer.writeObjectValue<PaymentMethodDetailsIdeal>('ideal', ideal);
    writer.writeObjectValue<PaymentMethodDetailsInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<PaymentMethodDetailsKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<PaymentMethodDetailsKlarna>('klarna', klarna);
    writer.writeObjectValue<PaymentMethodDetailsKonbini>('konbini', konbini);
    writer.writeObjectValue<PaymentMethodDetailsKrCard>('kr_card', krCard);
    writer.writeObjectValue<PaymentMethodDetailsLink>('link', link);
    writer.writeObjectValue<PaymentMethodDetailsMbWay>('mb_way', mbWay);
    writer.writeObjectValue<PaymentMethodDetailsMobilepay>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<PaymentMethodDetailsMultibanco>(
        'multibanco', multibanco);
    writer.writeObjectValue<PaymentMethodDetailsNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<PaymentMethodDetailsNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<PaymentMethodDetailsOxxo>('oxxo', oxxo);
    writer.writeObjectValue<PaymentMethodDetailsP24>('p24', p24);
    writer.writeObjectValue<PaymentMethodDetailsPayByBank>(
        'pay_by_bank', payByBank);
    writer.writeObjectValue<PaymentMethodDetailsPayco>('payco', payco);
    writer.writeObjectValue<PaymentMethodDetailsPaynow>('paynow', paynow);
    writer.writeObjectValue<PaymentMethodDetailsPaypal>('paypal', paypal);
    writer.writeObjectValue<PaymentMethodDetailsPayto>('payto', payto);
    writer.writeObjectValue<PaymentMethodDetailsPix>('pix', pix);
    writer.writeObjectValue<PaymentMethodDetailsPromptpay>(
        'promptpay', promptpay);
    writer.writeObjectValue<PaymentMethodDetailsRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<PaymentMethodDetailsSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<PaymentMethodDetailsSatispay>('satispay', satispay);
    writer.writeObjectValue<PaymentMethodDetailsSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<PaymentMethodDetailsSofort>('sofort', sofort);
    writer.writeObjectValue<PaymentMethodDetailsStripeAccount>(
        'stripe_account', stripeAccount);
    writer.writeObjectValue<PaymentMethodDetailsSwish>('swish', swish);
    writer.writeObjectValue<PaymentMethodDetailsTwint>('twint', twint);
    writer.writeStringValue('type', type_);
    writer.writeObjectValue<PaymentMethodDetailsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<PaymentMethodDetailsWechat>('wechat', wechat);
    writer.writeObjectValue<PaymentMethodDetailsWechatPay>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<PaymentMethodDetailsZip>('zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
