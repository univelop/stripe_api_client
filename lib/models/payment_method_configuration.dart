// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_config_resource_payment_method_properties.dart';
import './payment_method_configuration_object.dart';

/// auto generated
/// PaymentMethodConfigurations control which payment methods are displayed to your customers when you don't explicitly specify payment method types. You can have multiple configurations with different sets of payment methods for different scenarios.There are two types of PaymentMethodConfigurations. Which is used depends on the [charge type](https://docs.stripe.com/connect/charges):**Direct** configurations apply to payments created on your account, including Connect destination charges, Connect separate charges and transfers, and payments not involving Connect.**Child** configurations apply to payments created on your connected accounts using direct charges, and charges with the on_behalf_of parameter.Child configurations have a `parent` that sets default values and controls which settings connected accounts may override. You can specify a parent ID at payment time, and Stripe will automatically resolve the connected account’s associated child configuration. Parent configurations are [managed in the dashboard](https://dashboard.stripe.com/settings/payment_methods/connected_accounts) and are not available in this API.Related guides:- [Payment Method Configurations API](https://docs.stripe.com/connect/payment-method-configurations)- [Multiple configurations on dynamic payment methods](https://docs.stripe.com/payments/multiple-payment-method-configs)- [Multiple configurations for your Connect accounts](https://docs.stripe.com/connect/multiple-payment-method-configurations)
class PaymentMethodConfiguration implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  PaymentMethodConfigResourcePaymentMethodProperties? acssDebit;

  ///  Whether the configuration can be used for new payments.
  bool? active;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The affirm property
  PaymentMethodConfigResourcePaymentMethodProperties? affirm;

  ///  The afterpay_clearpay property
  PaymentMethodConfigResourcePaymentMethodProperties? afterpayClearpay;

  ///  The alipay property
  PaymentMethodConfigResourcePaymentMethodProperties? alipay;

  ///  The alma property
  PaymentMethodConfigResourcePaymentMethodProperties? alma;

  ///  The amazon_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? amazonPay;

  ///  The apple_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? applePay;

  ///  For child configs, the Connect application associated with the configuration.
  String? application;

  ///  The au_becs_debit property
  PaymentMethodConfigResourcePaymentMethodProperties? auBecsDebit;

  ///  The bacs_debit property
  PaymentMethodConfigResourcePaymentMethodProperties? bacsDebit;

  ///  The bancontact property
  PaymentMethodConfigResourcePaymentMethodProperties? bancontact;

  ///  The billie property
  PaymentMethodConfigResourcePaymentMethodProperties? billie;

  ///  The blik property
  PaymentMethodConfigResourcePaymentMethodProperties? blik;

  ///  The boleto property
  PaymentMethodConfigResourcePaymentMethodProperties? boleto;

  ///  The card property
  PaymentMethodConfigResourcePaymentMethodProperties? card;

  ///  The cartes_bancaires property
  PaymentMethodConfigResourcePaymentMethodProperties? cartesBancaires;

  ///  The cashapp property
  PaymentMethodConfigResourcePaymentMethodProperties? cashapp;

  ///  The crypto property
  PaymentMethodConfigResourcePaymentMethodProperties? crypto;

  ///  The customer_balance property
  PaymentMethodConfigResourcePaymentMethodProperties? customerBalance;

  ///  The eps property
  PaymentMethodConfigResourcePaymentMethodProperties? eps;

  ///  The fpx property
  PaymentMethodConfigResourcePaymentMethodProperties? fpx;

  ///  The giropay property
  PaymentMethodConfigResourcePaymentMethodProperties? giropay;

  ///  The google_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? googlePay;

  ///  The grabpay property
  PaymentMethodConfigResourcePaymentMethodProperties? grabpay;

  ///  Unique identifier for the object.
  String? id;

  ///  The ideal property
  PaymentMethodConfigResourcePaymentMethodProperties? ideal;

  ///  The default configuration is used whenever a payment method configuration is not specified.
  bool? isDefault;

  ///  The jcb property
  PaymentMethodConfigResourcePaymentMethodProperties? jcb;

  ///  The kakao_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? kakaoPay;

  ///  The klarna property
  PaymentMethodConfigResourcePaymentMethodProperties? klarna;

  ///  The konbini property
  PaymentMethodConfigResourcePaymentMethodProperties? konbini;

  ///  The kr_card property
  PaymentMethodConfigResourcePaymentMethodProperties? krCard;

  ///  The link property
  PaymentMethodConfigResourcePaymentMethodProperties? link;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The mb_way property
  PaymentMethodConfigResourcePaymentMethodProperties? mbWay;

  ///  The mobilepay property
  PaymentMethodConfigResourcePaymentMethodProperties? mobilepay;

  ///  The multibanco property
  PaymentMethodConfigResourcePaymentMethodProperties? multibanco;

  ///  The configuration's name.
  String? name;

  ///  The naver_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? naverPay;

  ///  The nz_bank_account property
  PaymentMethodConfigResourcePaymentMethodProperties? nzBankAccount;

  ///  String representing the object's type. Objects of the same type share the same value.
  PaymentMethodConfigurationObject? object;

  ///  The oxxo property
  PaymentMethodConfigResourcePaymentMethodProperties? oxxo;

  ///  The p24 property
  PaymentMethodConfigResourcePaymentMethodProperties? p24;

  ///  For child configs, the configuration's parent configuration.
  String? parent;

  ///  The pay_by_bank property
  PaymentMethodConfigResourcePaymentMethodProperties? payByBank;

  ///  The payco property
  PaymentMethodConfigResourcePaymentMethodProperties? payco;

  ///  The paynow property
  PaymentMethodConfigResourcePaymentMethodProperties? paynow;

  ///  The paypal property
  PaymentMethodConfigResourcePaymentMethodProperties? paypal;

  ///  The payto property
  PaymentMethodConfigResourcePaymentMethodProperties? payto;

  ///  The pix property
  PaymentMethodConfigResourcePaymentMethodProperties? pix;

  ///  The promptpay property
  PaymentMethodConfigResourcePaymentMethodProperties? promptpay;

  ///  The revolut_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? revolutPay;

  ///  The samsung_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? samsungPay;

  ///  The satispay property
  PaymentMethodConfigResourcePaymentMethodProperties? satispay;

  ///  The sepa_debit property
  PaymentMethodConfigResourcePaymentMethodProperties? sepaDebit;

  ///  The sofort property
  PaymentMethodConfigResourcePaymentMethodProperties? sofort;

  ///  The swish property
  PaymentMethodConfigResourcePaymentMethodProperties? swish;

  ///  The twint property
  PaymentMethodConfigResourcePaymentMethodProperties? twint;

  ///  The us_bank_account property
  PaymentMethodConfigResourcePaymentMethodProperties? usBankAccount;

  ///  The wechat_pay property
  PaymentMethodConfigResourcePaymentMethodProperties? wechatPay;

  ///  The zip property
  PaymentMethodConfigResourcePaymentMethodProperties? zip;

  /// Instantiates a new [PaymentMethodConfiguration] and sets the default values.
  PaymentMethodConfiguration() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfiguration createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodConfiguration();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['active'] = (node) => active = node.getBoolValue();
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['apple_pay'] = (node) => applePay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['application'] =
        (node) => application = node.getStringValue();
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['cartes_bancaires'] = (node) => cartesBancaires =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['google_pay'] = (node) => googlePay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['is_default'] = (node) => isDefault = node.getBoolValue();
    deserializerMap['jcb'] = (node) => jcb =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<PaymentMethodConfigurationObject>((stringValue) =>
            PaymentMethodConfigurationObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['parent'] = (node) => parent = node.getStringValue();
    deserializerMap['pay_by_bank'] = (node) => payByBank =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
            PaymentMethodConfigResourcePaymentMethodProperties
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'acss_debit', acssDebit);
    writer.writeBoolValue('active', value: active);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'affirm', affirm);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'alipay', alipay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'alma', alma);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'apple_pay', applePay);
    writer.writeStringValue('application', application);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'bancontact', bancontact);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'billie', billie);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'blik', blik);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'boleto', boleto);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'card', card);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'cartes_bancaires', cartesBancaires);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'cashapp', cashapp);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'crypto', crypto);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'eps', eps);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'fpx', fpx);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'giropay', giropay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'google_pay', googlePay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'grabpay', grabpay);
    writer.writeStringValue('id', id);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'ideal', ideal);
    writer.writeBoolValue('is_default', value: isDefault);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'jcb', jcb);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'klarna', klarna);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'konbini', konbini);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'kr_card', krCard);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'link', link);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'mb_way', mbWay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'mobilepay', mobilepay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'multibanco', multibanco);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'naver_pay', naverPay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'nz_bank_account', nzBankAccount);
    writer.writeEnumValue<PaymentMethodConfigurationObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'oxxo', oxxo);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'p24', p24);
    writer.writeStringValue('parent', parent);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'pay_by_bank', payByBank);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'payco', payco);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'paynow', paynow);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'paypal', paypal);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'payto', payto);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'pix', pix);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'promptpay', promptpay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'samsung_pay', samsungPay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'satispay', satispay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'sofort', sofort);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'swish', swish);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'twint', twint);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'us_bank_account', usBankAccount);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'wechat_pay', wechatPay);
    writer.writeObjectValue<PaymentMethodConfigResourcePaymentMethodProperties>(
        'zip', zip);
    writer.writeAdditionalData(additionalData);
  }
}
