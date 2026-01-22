// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_card_present_common_wallet.dart';
import './payment_method_card_present_networks.dart';
import './payment_method_card_present_read_method.dart';
import './payment_method_details_card_present_offline.dart';

/// auto generated
class PaymentMethodCardPresent implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
  String? brand;

  ///  The [product code](https://stripe.com/docs/card-product-codes) that identifies the specific program or product associated with a card.
  String? brandProduct;

  ///  The cardholder name as read from the card, in [ISO 7813](https://en.wikipedia.org/wiki/ISO/IEC_7813) format. May include alphanumeric characters, special characters and first/last name separator (`/`). In some cases, the cardholder name may not be available depending on how the issuer has configured the card. Cardholder name is typically not available on swipe or contactless payments, such as those made with Apple Pay and Google Pay.
  String? cardholderName;

  ///  Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
  String? country;

  ///  A high-level description of the type of cards issued in this range.
  String? description;

  ///  Two-digit number representing the card's expiration month.
  int? expMonth;

  ///  Four-digit number representing the card's expiration year.
  int? expYear;

  ///  Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.*As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
  String? fingerprint;

  ///  Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
  String? funding;

  ///  The name of the card's issuing bank.
  String? issuer;

  ///  The last four digits of the card.
  String? last4;

  ///  Contains information about card networks that can be used to process the payment.
  PaymentMethodCardPresentNetworks? networks;

  ///  Details about payment methods collected offline.
  PaymentMethodDetailsCardPresentOffline? offline;

  ///  The languages that the issuing bank recommends using for localizing any customer-facing text, as read from the card. Referenced from EMV tag 5F2D, data encoded on the card's chip.
  Iterable<String>? preferredLocales;

  ///  How card details were read in this transaction.
  PaymentMethodCardPresentReadMethod? readMethod;

  ///  The wallet property
  PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet? wallet;

  /// Instantiates a new [PaymentMethodCardPresent] and sets the default values.
  PaymentMethodCardPresent() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodCardPresent createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodCardPresent();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['brand_product'] =
        (node) => brandProduct = node.getStringValue();
    deserializerMap['cardholder_name'] =
        (node) => cardholderName = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['issuer'] = (node) => issuer = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['networks'] = (node) => networks =
        node.getObjectValue<PaymentMethodCardPresentNetworks>(
            PaymentMethodCardPresentNetworks.createFromDiscriminatorValue);
    deserializerMap['offline'] = (node) => offline = node.getObjectValue<
            PaymentMethodDetailsCardPresentOffline>(
        PaymentMethodDetailsCardPresentOffline.createFromDiscriminatorValue);
    deserializerMap['preferred_locales'] = (node) =>
        preferredLocales = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['read_method'] = (node) => readMethod =
        node.getEnumValue<PaymentMethodCardPresentReadMethod>((stringValue) =>
            PaymentMethodCardPresentReadMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['wallet'] = (node) => wallet = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet>(
        PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('brand', brand);
    writer.writeStringValue('brand_product', brandProduct);
    writer.writeStringValue('cardholder_name', cardholderName);
    writer.writeStringValue('country', country);
    writer.writeStringValue('description', description);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeStringValue('issuer', issuer);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<PaymentMethodCardPresentNetworks>(
        'networks', networks);
    writer.writeObjectValue<PaymentMethodDetailsCardPresentOffline>(
        'offline', offline);
    writer.writeCollectionOfPrimitiveValues<String?>(
        'preferred_locales', preferredLocales);
    writer.writeEnumValue<PaymentMethodCardPresentReadMethod>(
        'read_method', readMethod, (e) => e?.value);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardPresentCommonWallet>(
        'wallet', wallet);
    writer.writeAdditionalData(additionalData);
  }
}
