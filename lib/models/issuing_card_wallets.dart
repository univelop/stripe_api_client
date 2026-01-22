// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_card_apple_pay.dart';
import './issuing_card_google_pay.dart';

/// auto generated
class IssuingCardWallets implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The apple_pay property
  IssuingCardApplePay? applePay;

  ///  The google_pay property
  IssuingCardGooglePay? googlePay;

  ///  Unique identifier for a card used with digital wallets
  String? primaryAccountIdentifier;

  /// Instantiates a new [IssuingCardWallets] and sets the default values.
  IssuingCardWallets() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingCardWallets createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingCardWallets();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['apple_pay'] = (node) => applePay =
        node.getObjectValue<IssuingCardApplePay>(
            IssuingCardApplePay.createFromDiscriminatorValue);
    deserializerMap['google_pay'] = (node) => googlePay =
        node.getObjectValue<IssuingCardGooglePay>(
            IssuingCardGooglePay.createFromDiscriminatorValue);
    deserializerMap['primary_account_identifier'] =
        (node) => primaryAccountIdentifier = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingCardApplePay>('apple_pay', applePay);
    writer.writeObjectValue<IssuingCardGooglePay>('google_pay', googlePay);
    writer.writeStringValue(
        'primary_account_identifier', primaryAccountIdentifier);
    writer.writeAdditionalData(additionalData);
  }
}
