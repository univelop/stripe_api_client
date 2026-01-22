// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_card_wallet_amex_express_checkout.dart';
import './payment_method_card_wallet_apple_pay.dart';
import './payment_method_card_wallet_google_pay.dart';
import './payment_method_card_wallet_link.dart';
import './payment_method_card_wallet_masterpass.dart';
import './payment_method_card_wallet_samsung_pay.dart';
import './payment_method_card_wallet_type.dart';
import './payment_method_card_wallet_visa_checkout.dart';

/// auto generated
class PaymentMethodCardWallet implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amex_express_checkout property
  PaymentMethodCardWalletAmexExpressCheckout? amexExpressCheckout;

  ///  The apple_pay property
  PaymentMethodCardWalletApplePay? applePay;

  ///  (For tokenized numbers only.) The last four digits of the device account number.
  String? dynamicLast4;

  ///  The google_pay property
  PaymentMethodCardWalletGooglePay? googlePay;

  ///  The link property
  PaymentMethodCardWalletLink? link;

  ///  The masterpass property
  PaymentMethodCardWalletMasterpass? masterpass;

  ///  The samsung_pay property
  PaymentMethodCardWalletSamsungPay? samsungPay;

  ///  The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
  PaymentMethodCardWalletType? type_;

  ///  The visa_checkout property
  PaymentMethodCardWalletVisaCheckout? visaCheckout;

  /// Instantiates a new [PaymentMethodCardWallet] and sets the default values.
  PaymentMethodCardWallet() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodCardWallet createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodCardWallet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amex_express_checkout'] = (node) => amexExpressCheckout =
        node.getObjectValue<PaymentMethodCardWalletAmexExpressCheckout>(
            PaymentMethodCardWalletAmexExpressCheckout
                .createFromDiscriminatorValue);
    deserializerMap['apple_pay'] = (node) => applePay =
        node.getObjectValue<PaymentMethodCardWalletApplePay>(
            PaymentMethodCardWalletApplePay.createFromDiscriminatorValue);
    deserializerMap['dynamic_last4'] =
        (node) => dynamicLast4 = node.getStringValue();
    deserializerMap['google_pay'] = (node) => googlePay =
        node.getObjectValue<PaymentMethodCardWalletGooglePay>(
            PaymentMethodCardWalletGooglePay.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodCardWalletLink>(
            PaymentMethodCardWalletLink.createFromDiscriminatorValue);
    deserializerMap['masterpass'] = (node) => masterpass =
        node.getObjectValue<PaymentMethodCardWalletMasterpass>(
            PaymentMethodCardWalletMasterpass.createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay =
        node.getObjectValue<PaymentMethodCardWalletSamsungPay>(
            PaymentMethodCardWalletSamsungPay.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentMethodCardWalletType>((stringValue) =>
            PaymentMethodCardWalletType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['visa_checkout'] = (node) => visaCheckout =
        node.getObjectValue<PaymentMethodCardWalletVisaCheckout>(
            PaymentMethodCardWalletVisaCheckout.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodCardWalletAmexExpressCheckout>(
        'amex_express_checkout', amexExpressCheckout);
    writer.writeObjectValue<PaymentMethodCardWalletApplePay>(
        'apple_pay', applePay);
    writer.writeStringValue('dynamic_last4', dynamicLast4);
    writer.writeObjectValue<PaymentMethodCardWalletGooglePay>(
        'google_pay', googlePay);
    writer.writeObjectValue<PaymentMethodCardWalletLink>('link', link);
    writer.writeObjectValue<PaymentMethodCardWalletMasterpass>(
        'masterpass', masterpass);
    writer.writeObjectValue<PaymentMethodCardWalletSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeEnumValue<PaymentMethodCardWalletType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodCardWalletVisaCheckout>(
        'visa_checkout', visaCheckout);
    writer.writeAdditionalData(additionalData);
  }
}
