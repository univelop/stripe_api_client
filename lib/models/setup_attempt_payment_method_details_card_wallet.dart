// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_details_card_wallet_apple_pay.dart';
import './payment_method_details_card_wallet_google_pay.dart';
import './setup_attempt_payment_method_details_card_wallet_type.dart';

/// auto generated
class SetupAttemptPaymentMethodDetailsCardWallet
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The apple_pay property
  PaymentMethodDetailsCardWalletApplePay? applePay;

  ///  The google_pay property
  PaymentMethodDetailsCardWalletGooglePay? googlePay;

  ///  The type of the card wallet, one of `apple_pay`, `google_pay`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
  SetupAttemptPaymentMethodDetailsCardWalletType? type_;

  /// Instantiates a new [SetupAttemptPaymentMethodDetailsCardWallet] and sets the default values.
  SetupAttemptPaymentMethodDetailsCardWallet() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupAttemptPaymentMethodDetailsCardWallet
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupAttemptPaymentMethodDetailsCardWallet();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['apple_pay'] = (node) => applePay = node.getObjectValue<
            PaymentMethodDetailsCardWalletApplePay>(
        PaymentMethodDetailsCardWalletApplePay.createFromDiscriminatorValue);
    deserializerMap['google_pay'] = (node) => googlePay = node.getObjectValue<
            PaymentMethodDetailsCardWalletGooglePay>(
        PaymentMethodDetailsCardWalletGooglePay.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SetupAttemptPaymentMethodDetailsCardWalletType>(
            (stringValue) => SetupAttemptPaymentMethodDetailsCardWalletType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PaymentMethodDetailsCardWalletApplePay>(
        'apple_pay', applePay);
    writer.writeObjectValue<PaymentMethodDetailsCardWalletGooglePay>(
        'google_pay', googlePay);
    writer.writeEnumValue<SetupAttemptPaymentMethodDetailsCardWalletType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
