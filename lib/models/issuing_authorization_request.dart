// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_amount_details.dart';
import './issuing_authorization_request_reason.dart';

/// auto generated
class IssuingAuthorizationRequest implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The `pending_request.amount` at the time of the request, presented in your card's currency and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal). Stripe held this amount from your account to fund the authorization if the request was approved.
  int? amount;

  ///  Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  IssuingAuthorizationAmountDetails? amountDetails;

  ///  Whether this request was approved.
  bool? approved;

  ///  A code created by Stripe which is shared with the merchant to validate the authorization. This field will be populated if the authorization message was approved. The code typically starts with the letter "S", followed by a six-digit number. For example, "S498162". Please note that the code is not guaranteed to be unique across authorizations.
  String? authorizationCode;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  The `pending_request.merchant_amount` at the time of the request, presented in the `merchant_currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? merchantAmount;

  ///  The currency that was collected by the merchant and presented to the cardholder for the authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? merchantCurrency;

  ///  The card network's estimate of the likelihood that an authorization is fraudulent. Takes on values between 1 and 99.
  int? networkRiskScore;

  ///  When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
  IssuingAuthorizationRequestReason? reason;

  ///  If the `request_history.reason` is `webhook_error` because the direct webhook response is invalid (for example, parsing errors or missing parameters), we surface a more detailed error message via this field.
  String? reasonMessage;

  ///  Time when the card network received an authorization request from the acquirer in UTC. Referred to by networks as transmission time.
  int? requestedAt;

  /// Instantiates a new [IssuingAuthorizationRequest] and sets the default values.
  IssuingAuthorizationRequest() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationRequest createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationRequest();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<IssuingAuthorizationAmountDetails>(
            IssuingAuthorizationAmountDetails.createFromDiscriminatorValue);
    deserializerMap['approved'] = (node) => approved = node.getBoolValue();
    deserializerMap['authorization_code'] =
        (node) => authorizationCode = node.getStringValue();
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['merchant_amount'] =
        (node) => merchantAmount = node.getIntValue();
    deserializerMap['merchant_currency'] =
        (node) => merchantCurrency = node.getStringValue();
    deserializerMap['network_risk_score'] =
        (node) => networkRiskScore = node.getIntValue();
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<IssuingAuthorizationRequestReason>((stringValue) =>
            IssuingAuthorizationRequestReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['reason_message'] =
        (node) => reasonMessage = node.getStringValue();
    deserializerMap['requested_at'] =
        (node) => requestedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<IssuingAuthorizationAmountDetails>(
        'amount_details', amountDetails);
    writer.writeBoolValue('approved', value: approved);
    writer.writeStringValue('authorization_code', authorizationCode);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeIntValue('merchant_amount', merchantAmount);
    writer.writeStringValue('merchant_currency', merchantCurrency);
    writer.writeIntValue('network_risk_score', networkRiskScore);
    writer.writeEnumValue<IssuingAuthorizationRequestReason>(
        'reason', reason, (e) => e?.value);
    writer.writeStringValue('reason_message', reasonMessage);
    writer.writeIntValue('requested_at', requestedAt);
    writer.writeAdditionalData(additionalData);
  }
}
