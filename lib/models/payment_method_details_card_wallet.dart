// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_card_wallet_amex_express_checkout.dart';
import './payment_method_details_card_wallet_apple_pay.dart';
import './payment_method_details_card_wallet_google_pay.dart';
import './payment_method_details_card_wallet_link.dart';
import './payment_method_details_card_wallet_masterpass.dart';
import './payment_method_details_card_wallet_samsung_pay.dart';
import './payment_method_details_card_wallet_type.dart';
import './payment_method_details_card_wallet_visa_checkout.dart';

/// auto generated
class PaymentMethodDetailsCardWallet implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amex_express_checkout property
  PaymentMethodDetailsCardWalletAmexExpressCheckout? amexExpressCheckout;

  ///  The apple_pay property
  PaymentMethodDetailsCardWalletApplePay? applePay;

  ///  (For tokenized numbers only.) The last four digits of the device account number.
  String? dynamicLast4;

  ///  The google_pay property
  PaymentMethodDetailsCardWalletGooglePay? googlePay;

  ///  The link property
  PaymentMethodDetailsCardWalletLink? link;

  ///  The masterpass property
  PaymentMethodDetailsCardWalletMasterpass? masterpass;

  ///  The samsung_pay property
  PaymentMethodDetailsCardWalletSamsungPay? samsungPay;

  ///  The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
  PaymentMethodDetailsCardWalletType? type_;

  ///  The visa_checkout property
  PaymentMethodDetailsCardWalletVisaCheckout? visaCheckout;

  /// Instantiates a new [PaymentMethodDetailsCardWallet] and sets the default values.
  PaymentMethodDetailsCardWallet() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsCardWallet createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsCardWallet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amex_express_checkout'] = (node) => amexExpressCheckout =
        node.getObjectValue<PaymentMethodDetailsCardWalletAmexExpressCheckout>(
            PaymentMethodDetailsCardWalletAmexExpressCheckout
                .createFromDiscriminatorValue);
    deserializerMap['apple_pay'] = (node) => applePay = node.getObjectValue<
            PaymentMethodDetailsCardWalletApplePay>(
        PaymentMethodDetailsCardWalletApplePay.createFromDiscriminatorValue);
    deserializerMap['dynamic_last4'] =
        (node) => dynamicLast4 = node.getStringValue();
    deserializerMap['google_pay'] = (node) => googlePay = node.getObjectValue<
            PaymentMethodDetailsCardWalletGooglePay>(
        PaymentMethodDetailsCardWalletGooglePay.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodDetailsCardWalletLink>(
            PaymentMethodDetailsCardWalletLink.createFromDiscriminatorValue);
    deserializerMap['masterpass'] = (node) => masterpass = node.getObjectValue<
            PaymentMethodDetailsCardWalletMasterpass>(
        PaymentMethodDetailsCardWalletMasterpass.createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node.getObjectValue<
            PaymentMethodDetailsCardWalletSamsungPay>(
        PaymentMethodDetailsCardWalletSamsungPay.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PaymentMethodDetailsCardWalletType>((stringValue) =>
            PaymentMethodDetailsCardWalletType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['visa_checkout'] = (node) => visaCheckout =
        node.getObjectValue<PaymentMethodDetailsCardWalletVisaCheckout>(
            PaymentMethodDetailsCardWalletVisaCheckout
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodDetailsCardWalletAmexExpressCheckout>(
        'amex_express_checkout', amexExpressCheckout);
    writer.writeObjectValue<PaymentMethodDetailsCardWalletApplePay>(
        'apple_pay', applePay);
    writer.writeStringValue('dynamic_last4', dynamicLast4);
    writer.writeObjectValue<PaymentMethodDetailsCardWalletGooglePay>(
        'google_pay', googlePay);
    writer.writeObjectValue<PaymentMethodDetailsCardWalletLink>('link', link);
    writer.writeObjectValue<PaymentMethodDetailsCardWalletMasterpass>(
        'masterpass', masterpass);
    writer.writeObjectValue<PaymentMethodDetailsCardWalletSamsungPay>(
        'samsung_pay', samsungPay);
    writer.writeEnumValue<PaymentMethodDetailsCardWalletType>(
        'type', type_, (e) => e?.value);
    writer.writeObjectValue<PaymentMethodDetailsCardWalletVisaCheckout>(
        'visa_checkout', visaCheckout);
    writer.writeAdditionalData(additionalData);
  }
}
