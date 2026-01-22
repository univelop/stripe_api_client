// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_details.dart';
import './payment_flows_private_payment_methods_alipay.dart';
import './payment_method_acss_debit.dart';
import './payment_method_affirm.dart';
import './payment_method_afterpay_clearpay.dart';
import './payment_method_allow_redisplay.dart';
import './payment_method_alma.dart';
import './payment_method_amazon_pay.dart';
import './payment_method_au_becs_debit.dart';
import './payment_method_bacs_debit.dart';
import './payment_method_bancontact.dart';
import './payment_method_billie.dart';
import './payment_method_blik.dart';
import './payment_method_boleto.dart';
import './payment_method_card.dart';
import './payment_method_card_present.dart';
import './payment_method_cashapp.dart';
import './payment_method_crypto.dart';
import './payment_method_custom.dart';
import './payment_method_customer.dart';
import './payment_method_customer_balance.dart';
import './payment_method_eps.dart';
import './payment_method_fpx.dart';
import './payment_method_giropay.dart';
import './payment_method_grabpay.dart';
import './payment_method_ideal.dart';
import './payment_method_interac_present.dart';
import './payment_method_kakao_pay.dart';
import './payment_method_klarna.dart';
import './payment_method_konbini.dart';
import './payment_method_kr_card.dart';
import './payment_method_link.dart';
import './payment_method_mb_way.dart';
import './payment_method_metadata.dart';
import './payment_method_mobilepay.dart';
import './payment_method_multibanco.dart';
import './payment_method_naver_pay.dart';
import './payment_method_nz_bank_account.dart';
import './payment_method_object.dart';
import './payment_method_oxxo.dart';
import './payment_method_p24.dart';
import './payment_method_pay_by_bank.dart';
import './payment_method_payco.dart';
import './payment_method_paynow.dart';
import './payment_method_paypal.dart';
import './payment_method_payto.dart';
import './payment_method_pix.dart';
import './payment_method_promptpay.dart';
import './payment_method_revolut_pay.dart';
import './payment_method_samsung_pay.dart';
import './payment_method_satispay.dart';
import './payment_method_sepa_debit.dart';
import './payment_method_sofort.dart';
import './payment_method_swish.dart';
import './payment_method_twint.dart';
import './payment_method_type.dart';
import './payment_method_us_bank_account.dart';
import './payment_method_wechat_pay.dart';
import './payment_method_zip.dart';
import './radar_radar_options.dart';

/// auto generated
/// PaymentMethod objects represent your customer's payment instruments.You can use them with [PaymentIntents](https://docs.stripe.com/payments/payment-intents) to collect payments or save them toCustomer objects to store instrument details for future payments.Related guides: [Payment Methods](https://docs.stripe.com/payments/payment-methods) and [More Payment Scenarios](https://docs.stripe.com/payments/more-payment-scenarios).
class PaymentMethod implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  PaymentMethodAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  PaymentMethodAffirm? affirm;

  ///  The afterpay_clearpay property
  PaymentMethodAfterpayClearpay? afterpayClearpay;

  ///  The alipay property
  PaymentFlowsPrivatePaymentMethodsAlipay? alipay;

  ///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
  PaymentMethodAllowRedisplay? allowRedisplay;

  ///  The alma property
  PaymentMethodAlma? alma;

  ///  The amazon_pay property
  PaymentMethodAmazonPay? amazonPay;

  ///  The au_becs_debit property
  PaymentMethodAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  PaymentMethodBacsDebit? bacsDebit;

  ///  The bancontact property
  PaymentMethodBancontact? bancontact;

  ///  The billie property
  PaymentMethodBillie? billie;

  ///  The billing_details property
  BillingDetails? billingDetails;

  ///  The blik property
  PaymentMethodBlik? blik;

  ///  The boleto property
  PaymentMethodBoleto? boleto;

  ///  The card property
  PaymentMethodCard? card;

  ///  The card_present property
  PaymentMethodCardPresent? cardPresent;

  ///  The cashapp property
  PaymentMethodCashapp? cashapp;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The crypto property
  PaymentMethodCrypto? crypto;

  ///  The custom property
  PaymentMethodCustom? custom;

  ///  The ID of the Customer to which this PaymentMethod is saved. This will not be set when the PaymentMethod has not been saved to a Customer.
  PaymentMethodCustomer? customer;

  ///  The customer_account property
  String? customerAccount;

  ///  The customer_balance property
  PaymentMethodCustomerBalance? customerBalance;

  ///  The eps property
  PaymentMethodEps? eps;

  ///  The fpx property
  PaymentMethodFpx? fpx;

  ///  The giropay property
  PaymentMethodGiropay? giropay;

  ///  The grabpay property
  PaymentMethodGrabpay? grabpay;

  ///  Unique identifier for the object.
  String? id;

  ///  The ideal property
  PaymentMethodIdeal? ideal;

  ///  The interac_present property
  PaymentMethodInteracPresent? interacPresent;

  ///  The kakao_pay property
  PaymentMethodKakaoPay? kakaoPay;

  ///  The klarna property
  PaymentMethodKlarna? klarna;

  ///  The konbini property
  PaymentMethodKonbini? konbini;

  ///  The kr_card property
  PaymentMethodKrCard? krCard;

  ///  The link property
  PaymentMethodLink? link;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The mb_way property
  PaymentMethodMbWay? mbWay;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  PaymentMethodMetadata? metadata;

  ///  The mobilepay property
  PaymentMethodMobilepay? mobilepay;

  ///  The multibanco property
  PaymentMethodMultibanco? multibanco;

  ///  The naver_pay property
  PaymentMethodNaverPay? naverPay;

  ///  The nz_bank_account property
  PaymentMethodNzBankAccount? nzBankAccount;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentMethodObject? object;

  ///  The oxxo property
  PaymentMethodOxxo? oxxo;

  ///  The p24 property
  PaymentMethodP24? p24;

  ///  The pay_by_bank property
  PaymentMethodPayByBank? payByBank;

  ///  The payco property
  PaymentMethodPayco? payco;

  ///  The paynow property
  PaymentMethodPaynow? paynow;

  ///  The paypal property
  PaymentMethodPaypal? paypal;

  ///  The payto property
  PaymentMethodPayto? payto;

  ///  The pix property
  PaymentMethodPix? pix;

  ///  The promptpay property
  PaymentMethodPromptpay? promptpay;

  ///  Options to configure Radar. See [Radar Session](https://docs.stripe.com/radar/radar-session) for more information.
  RadarRadarOptions? radarOptions;

  ///  The revolut_pay property
  PaymentMethodRevolutPay? revolutPay;

  ///  The samsung_pay property
  PaymentMethodSamsungPay? samsungPay;

  ///  The satispay property
  PaymentMethodSatispay? satispay;

  ///  The sepa_debit property
  PaymentMethodSepaDebit? sepaDebit;

  ///  The sofort property
  PaymentMethodSofort? sofort;

  ///  The swish property
  PaymentMethodSwish? swish;

  ///  The twint property
  PaymentMethodTwint? twint;

  ///  The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
  PaymentMethodType? type_;

  ///  The us_bank_account property
  PaymentMethodUsBankAccount? usBankAccount;

  ///  The wechat_pay property
  PaymentMethodWechatPay? wechatPay;

  ///  The zip property
  PaymentMethodZip? zip;

  /// Instantiates a new [PaymentMethod] and sets the default values.
  PaymentMethod() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethod createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethod();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<PaymentMethodAcssDebit>(
            PaymentMethodAcssDebit.createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<PaymentMethodAffirm>(
            PaymentMethodAffirm.createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<PaymentMethodAfterpayClearpay>(
            PaymentMethodAfterpayClearpay.createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsAlipay>(
        PaymentFlowsPrivatePaymentMethodsAlipay.createFromDiscriminatorValue);
    deserializerMap['allow_redisplay'] = (node) => allowRedisplay =
        node.getEnumValue<PaymentMethodAllowRedisplay>((stringValue) =>
            PaymentMethodAllowRedisplay.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<PaymentMethodAlma>(
            PaymentMethodAlma.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<PaymentMethodAmazonPay>(
            PaymentMethodAmazonPay.createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<PaymentMethodAuBecsDebit>(
            PaymentMethodAuBecsDebit.createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<PaymentMethodBacsDebit>(
            PaymentMethodBacsDebit.createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<PaymentMethodBancontact>(
            PaymentMethodBancontact.createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<PaymentMethodBillie>(
            PaymentMethodBillie.createFromDiscriminatorValue);
    deserializerMap['billing_details'] = (node) => billingDetails =
        node.getObjectValue<BillingDetails>(
            BillingDetails.createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<PaymentMethodBlik>(
            PaymentMethodBlik.createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<PaymentMethodBoleto>(
            PaymentMethodBoleto.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentMethodCard>(
            PaymentMethodCard.createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<PaymentMethodCardPresent>(
            PaymentMethodCardPresent.createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<PaymentMethodCashapp>(
            PaymentMethodCashapp.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<PaymentMethodCrypto>(
            PaymentMethodCrypto.createFromDiscriminatorValue);
    deserializerMap['custom'] = (node) => custom =
        node.getObjectValue<PaymentMethodCustom>(
            PaymentMethodCustom.createFromDiscriminatorValue);
    deserializerMap['customer'] = (node) => customer =
        node.getObjectValue<PaymentMethodCustomer>(
            PaymentMethodCustomer.createFromDiscriminatorValue);
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<PaymentMethodCustomerBalance>(
            PaymentMethodCustomerBalance.createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<PaymentMethodEps>(
            PaymentMethodEps.createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<PaymentMethodFpx>(
            PaymentMethodFpx.createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<PaymentMethodGiropay>(
            PaymentMethodGiropay.createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<PaymentMethodGrabpay>(
            PaymentMethodGrabpay.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<PaymentMethodIdeal>(
            PaymentMethodIdeal.createFromDiscriminatorValue);
    deserializerMap['interac_present'] = (node) => interacPresent =
        node.getObjectValue<PaymentMethodInteracPresent>(
            PaymentMethodInteracPresent.createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<PaymentMethodKakaoPay>(
            PaymentMethodKakaoPay.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<PaymentMethodKlarna>(
            PaymentMethodKlarna.createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<PaymentMethodKonbini>(
            PaymentMethodKonbini.createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<PaymentMethodKrCard>(
            PaymentMethodKrCard.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodLink>(
            PaymentMethodLink.createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<PaymentMethodMbWay>(
            PaymentMethodMbWay.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<PaymentMethodMetadata>(
            PaymentMethodMetadata.createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay =
        node.getObjectValue<PaymentMethodMobilepay>(
            PaymentMethodMobilepay.createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<PaymentMethodMultibanco>(
            PaymentMethodMultibanco.createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<PaymentMethodNaverPay>(
            PaymentMethodNaverPay.createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<PaymentMethodNzBankAccount>(
            PaymentMethodNzBankAccount.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentMethodObject>((stringValue) =>
            PaymentMethodObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<PaymentMethodOxxo>(
            PaymentMethodOxxo.createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<PaymentMethodP24>(
            PaymentMethodP24.createFromDiscriminatorValue);
    deserializerMap['pay_by_bank'] = (node) => payByBank =
        node.getObjectValue<PaymentMethodPayByBank>(
            PaymentMethodPayByBank.createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<PaymentMethodPayco>(
            PaymentMethodPayco.createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<PaymentMethodPaynow>(
            PaymentMethodPaynow.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<PaymentMethodPaypal>(
            PaymentMethodPaypal.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<PaymentMethodPayto>(
            PaymentMethodPayto.createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<PaymentMethodPix>(
            PaymentMethodPix.createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay =
        node.getObjectValue<PaymentMethodPromptpay>(
            PaymentMethodPromptpay.createFromDiscriminatorValue);
    deserializerMap['radar_options'] = (node) => radarOptions =
        node.getObjectValue<RadarRadarOptions>(
            RadarRadarOptions.createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay =
        node.getObjectValue<PaymentMethodRevolutPay>(
            PaymentMethodRevolutPay.createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay =
        node.getObjectValue<PaymentMethodSamsungPay>(
            PaymentMethodSamsungPay.createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<PaymentMethodSatispay>(
            PaymentMethodSatispay.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<PaymentMethodSepaDebit>(
            PaymentMethodSepaDebit.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<PaymentMethodSofort>(
            PaymentMethodSofort.createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<PaymentMethodSwish>(
            PaymentMethodSwish.createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<PaymentMethodTwint>(
            PaymentMethodTwint.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentMethodType>((stringValue) => PaymentMethodType
            .values
            .where((enumVal) => enumVal.value == stringValue)
            .firstOrNull);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<PaymentMethodUsBankAccount>(
            PaymentMethodUsBankAccount.createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay =
        node.getObjectValue<PaymentMethodWechatPay>(
            PaymentMethodWechatPay.createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<PaymentMethodZip>(
            PaymentMethodZip.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodAcssDebit>('acss_debit', acssDebit);
    writer.writeObjectValue<PaymentMethodAffirm>('affirm', affirm);
    writer.writeObjectValue<PaymentMethodAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<PaymentFlowsPrivatePaymentMethodsAlipay>(
        'alipay', alipay);
    writer.writeEnumValue<PaymentMethodAllowRedisplay>(
        'allow_redisplay', allowRedisplay, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodAlma>('alma', alma);
    writer.writeObjectValue<PaymentMethodAmazonPay>('amazon_pay', amazonPay);
    writer.writeObjectValue<PaymentMethodAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<PaymentMethodBacsDebit>('bacs_debit', bacsDebit);
    writer.writeObjectValue<PaymentMethodBancontact>('bancontact', bancontact);
    writer.writeObjectValue<PaymentMethodBillie>('billie', billie);
    writer.writeObjectValue<BillingDetails>('billing_details', billingDetails);
    writer.writeObjectValue<PaymentMethodBlik>('blik', blik);
    writer.writeObjectValue<PaymentMethodBoleto>('boleto', boleto);
    writer.writeObjectValue<PaymentMethodCard>('card', card);
    writer.writeObjectValue<PaymentMethodCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<PaymentMethodCashapp>('cashapp', cashapp);
    writer.writeIntValue('created', created);
    writer.writeObjectValue<PaymentMethodCrypto>('crypto', crypto);
    writer.writeObjectValue<PaymentMethodCustom>('custom', custom);
    writer.writeObjectValue<PaymentMethodCustomer>('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeObjectValue<PaymentMethodCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<PaymentMethodEps>('eps', eps);
    writer.writeObjectValue<PaymentMethodFpx>('fpx', fpx);
    writer.writeObjectValue<PaymentMethodGiropay>('giropay', giropay);
    writer.writeObjectValue<PaymentMethodGrabpay>('grabpay', grabpay);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<PaymentMethodIdeal>('ideal', ideal);
    writer.writeObjectValue<PaymentMethodInteracPresent>(
        'interac_present', interacPresent);
    writer.writeObjectValue<PaymentMethodKakaoPay>('kakao_pay', kakaoPay);
    writer.writeObjectValue<PaymentMethodKlarna>('klarna', klarna);
    writer.writeObjectValue<PaymentMethodKonbini>('konbini', konbini);
    writer.writeObjectValue<PaymentMethodKrCard>('kr_card', krCard);
    writer.writeObjectValue<PaymentMethodLink>('link', link);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PaymentMethodMbWay>('mb_way', mbWay);
    writer.writeObjectValue<PaymentMethodMetadata>('metadata', metadata);
    writer.writeObjectValue<PaymentMethodMobilepay>('mobilepay', mobilepay);
    writer.writeObjectValue<PaymentMethodMultibanco>('multibanco', multibanco);
    writer.writeObjectValue<PaymentMethodNaverPay>('naver_pay', naverPay);
    writer.writeObjectValue<PaymentMethodNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeEnumValue<PaymentMethodObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodOxxo>('oxxo', oxxo);
    writer.writeObjectValue<PaymentMethodP24>('p24', p24);
    writer.writeObjectValue<PaymentMethodPayByBank>('pay_by_bank', payByBank);
    writer.writeObjectValue<PaymentMethodPayco>('payco', payco);
    writer.writeObjectValue<PaymentMethodPaynow>('paynow', paynow);
    writer.writeObjectValue<PaymentMethodPaypal>('paypal', paypal);
    writer.writeObjectValue<PaymentMethodPayto>('payto', payto);
    writer.writeObjectValue<PaymentMethodPix>('pix', pix);
    writer.writeObjectValue<PaymentMethodPromptpay>('promptpay', promptpay);
    writer.writeObjectValue<RadarRadarOptions>('radar_options', radarOptions);
    writer.writeObjectValue<PaymentMethodRevolutPay>('revolut_pay', revolutPay);
    writer.writeObjectValue<PaymentMethodSamsungPay>('samsung_pay', samsungPay);
    writer.writeObjectValue<PaymentMethodSatispay>('satispay', satispay);
    writer.writeObjectValue<PaymentMethodSepaDebit>('sepa_debit', sepaDebit);
    writer.writeObjectValue<PaymentMethodSofort>('sofort', sofort);
    writer.writeObjectValue<PaymentMethodSwish>('swish', swish);
    writer.writeObjectValue<PaymentMethodTwint>('twint', twint);
    writer.writeEnumValue<PaymentMethodType>('type', type_, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<PaymentMethodWechatPay>('wechat_pay', wechatPay);
    writer.writeObjectValue<PaymentMethodZip>('zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
