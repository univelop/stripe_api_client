// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_amount_details.dart';

/// auto generated
class IssuingAuthorizationPendingRequest
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional amount Stripe will hold if the authorization is approved, in the card's [currency](https://docs.stripe.com/api#issuing_authorization_object-pending-request-currency) and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  IssuingAuthorizationAmountDetails? amountDetails;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  If set `true`, you may provide [amount](https://docs.stripe.com/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
  bool? isAmountControllable;

  ///  The amount the merchant is requesting to be authorized in the `merchant_currency`. The amount is in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? merchantAmount;

  ///  The local currency the merchant is requesting to authorize.
  String? merchantCurrency;

  ///  The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
  int? networkRiskScore;

  /// Instantiates a new [IssuingAuthorizationPendingRequest] and sets the default values.
  IssuingAuthorizationPendingRequest() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationPendingRequest createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationPendingRequest();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<IssuingAuthorizationAmountDetails>(
            IssuingAuthorizationAmountDetails.createFromDiscriminatorValue);
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['is_amount_controllable'] =
        (node) => isAmountControllable = node.getBoolValue();
    deserializerMap['merchant_amount'] =
        (node) => merchantAmount = node.getIntValue();
    deserializerMap['merchant_currency'] =
        (node) => merchantCurrency = node.getStringValue();
    deserializerMap['network_risk_score'] =
        (node) => networkRiskScore = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<IssuingAuthorizationAmountDetails>(
        'amount_details', amountDetails);
    writer.writeStringValue('currency', currency);
    writer.writeBoolValue('is_amount_controllable',
        value: isAmountControllable);
    writer.writeIntValue('merchant_amount', merchantAmount);
    writer.writeStringValue('merchant_currency', merchantCurrency);
    writer.writeIntValue('network_risk_score', networkRiskScore);
    writer.writeAdditionalData(additionalData);
  }
}
