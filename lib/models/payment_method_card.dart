// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './networks.dart';
import './payment_method_card_checks.dart';
import './payment_method_card_generated_card.dart';
import './payment_method_card_regulated_status.dart';
import './payment_method_card_wallet.dart';
import './three_d_secure_usage.dart';

/// auto generated
class PaymentMethodCard implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
  String? brand;

  ///  Checks on Card address and CVC if provided.
  PaymentMethodCardChecks? checks;

  ///  Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
  String? country;

  ///  The brand to use when displaying the card, this accounts for customer's brand choice on dual-branded cards. Can be `american_express`, `cartes_bancaires`, `diners_club`, `discover`, `eftpos_australia`, `interac`, `jcb`, `mastercard`, `union_pay`, `visa`, or `other` and may contain more values in the future.
  String? displayBrand;

  ///  Two-digit number representing the card's expiration month.
  int? expMonth;

  ///  Four-digit number representing the card's expiration year.
  int? expYear;

  ///  Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.*As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
  String? fingerprint;

  ///  Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
  String? funding;

  ///  Details of the original PaymentMethod that created this object.
  PaymentMethodCardGeneratedCard? generatedFrom;

  ///  The last four digits of the card.
  String? last4;

  ///  Contains information about card networks that can be used to process the payment.
  Networks? networks;

  ///  Status of a card based on the card issuer.
  PaymentMethodCardRegulatedStatus? regulatedStatus;

  ///  Contains details on how this Card may be used for 3D Secure authentication.
  ThreeDSecureUsage? threeDSecureUsage;

  ///  If this Card is part of a card wallet, this contains the details of the card wallet.
  PaymentMethodCardWallet? wallet;

  /// Instantiates a new [PaymentMethodCard] and sets the default values.
  PaymentMethodCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodCard createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['checks'] = (node) => checks =
        node.getObjectValue<PaymentMethodCardChecks>(
            PaymentMethodCardChecks.createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['display_brand'] =
        (node) => displayBrand = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['generated_from'] = (node) => generatedFrom =
        node.getObjectValue<PaymentMethodCardGeneratedCard>(
            PaymentMethodCardGeneratedCard.createFromDiscriminatorValue);
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['networks'] = (node) => networks =
        node.getObjectValue<Networks>(Networks.createFromDiscriminatorValue);
    deserializerMap['regulated_status'] = (node) => regulatedStatus =
        node.getEnumValue<PaymentMethodCardRegulatedStatus>((stringValue) =>
            PaymentMethodCardRegulatedStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['three_d_secure_usage'] = (node) => threeDSecureUsage =
        node.getObjectValue<ThreeDSecureUsage>(
            ThreeDSecureUsage.createFromDiscriminatorValue);
    deserializerMap['wallet'] = (node) => wallet =
        node.getObjectValue<PaymentMethodCardWallet>(
            PaymentMethodCardWallet.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('brand', brand);
    writer.writeObjectValue<PaymentMethodCardChecks>('checks', checks);
    writer.writeStringValue('country', country);
    writer.writeStringValue('display_brand', displayBrand);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeObjectValue<PaymentMethodCardGeneratedCard>(
        'generated_from', generatedFrom);
    writer.writeStringValue('last4', last4);
    writer.writeObjectValue<Networks>('networks', networks);
    writer.writeEnumValue<PaymentMethodCardRegulatedStatus>(
        'regulated_status', regulatedStatus, (e) => e?.value);
    writer.writeObjectValue<ThreeDSecureUsage>(
        'three_d_secure_usage', threeDSecureUsage);
    writer.writeObjectValue<PaymentMethodCardWallet>('wallet', wallet);
    writer.writeAdditionalData(additionalData);
  }
}
