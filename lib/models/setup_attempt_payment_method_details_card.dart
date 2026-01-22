// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_attempt_payment_method_details_card_checks.dart';
import './setup_attempt_payment_method_details_card_wallet.dart';
import './three_d_secure_details.dart';

/// auto generated
class SetupAttemptPaymentMethodDetailsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
  String? brand;

  ///  Check results by Card networks on Card address and CVC at the time of authorization
  SetupAttemptPaymentMethodDetailsCardChecks? checks;

  ///  Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
  String? country;

  ///  Two-digit number representing the card's expiration month.
  int? expMonth;

  ///  Four-digit number representing the card's expiration year.
  int? expYear;

  ///  Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.*As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
  String? fingerprint;

  ///  Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
  String? funding;

  ///  The last four digits of the card.
  String? last4;

  ///  Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
  String? network;

  ///  Populated if this authorization used 3D Secure authentication.
  ThreeDSecureDetails? threeDSecure;

  ///  If this Card is part of a card wallet, this contains the details of the card wallet.
  SetupAttemptPaymentMethodDetailsCardWallet? wallet;

  /// Instantiates a new [SetupAttemptPaymentMethodDetailsCard] and sets the default values.
  SetupAttemptPaymentMethodDetailsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupAttemptPaymentMethodDetailsCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupAttemptPaymentMethodDetailsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['checks'] = (node) => checks =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsCardChecks>(
            SetupAttemptPaymentMethodDetailsCardChecks
                .createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['network'] = (node) => network = node.getStringValue();
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<ThreeDSecureDetails>(
            ThreeDSecureDetails.createFromDiscriminatorValue);
    deserializerMap['wallet'] = (node) => wallet =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsCardWallet>(
            SetupAttemptPaymentMethodDetailsCardWallet
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('brand', brand);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsCardChecks>(
        'checks', checks);
    writer.writeStringValue('country', country);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('network', network);
    writer.writeObjectValue<ThreeDSecureDetails>(
        'three_d_secure', threeDSecure);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsCardWallet>(
        'wallet', wallet);
    writer.writeAdditionalData(additionalData);
  }
}
