// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_amount_details.dart';
import './authorizations_post_request_body_authorization_method.dart';
import './authorizations_post_request_body_fleet.dart';
import './authorizations_post_request_body_fraud_disputability_likelihood.dart';
import './authorizations_post_request_body_fuel.dart';
import './authorizations_post_request_body_merchant_data.dart';
import './authorizations_post_request_body_network_data.dart';
import './authorizations_post_request_body_risk_assessment.dart';
import './authorizations_post_request_body_verification_data.dart';
import './authorizations_post_request_body_wallet.dart';

/// auto generated
class AuthorizationsPostRequestBody implements Parsable {
  ///  The total amount to attempt to authorize. This amount is in the provided currency, or defaults to the card's currency, and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? amount;

  ///  Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  AuthorizationsPostRequestBodyAmountDetails? amountDetails;

  ///  How the card details were provided. Defaults to online.
  AuthorizationsPostRequestBodyAuthorizationMethod? authorizationMethod;

  ///  Card associated with this authorization.
  String? card;

  ///  The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Fleet-specific information for authorizations using Fleet cards.
  AuthorizationsPostRequestBodyFleet? fleet;

  ///  Probability that this transaction can be disputed in the event of fraud. Assessed by comparing the characteristics of the authorization to card network rules.
  AuthorizationsPostRequestBodyFraudDisputabilityLikelihood?
      fraudDisputabilityLikelihood;

  ///  Information about fuel that was purchased with this transaction.
  AuthorizationsPostRequestBodyFuel? fuel;

  ///  If set `true`, you may provide [amount](https://docs.stripe.com/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
  bool? isAmountControllable;

  ///  The total amount to attempt to authorize. This amount is in the provided merchant currency, and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  int? merchantAmount;

  ///  The currency of the authorization. If not provided, defaults to the currency of the card. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? merchantCurrency;

  ///  Details about the seller (grocery store, e-commerce website, etc.) where the card authorization happened.
  AuthorizationsPostRequestBodyMerchantData? merchantData;

  ///  Details about the authorization, such as identifiers, set by the card network.
  AuthorizationsPostRequestBodyNetworkData? networkData;

  ///  Stripe’s assessment of the fraud risk for this authorization.
  AuthorizationsPostRequestBodyRiskAssessment? riskAssessment;

  ///  Verifications that Stripe performed on information that the cardholder provided to the merchant.
  AuthorizationsPostRequestBodyVerificationData? verificationData;

  ///  The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
  AuthorizationsPostRequestBodyWallet? wallet;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AuthorizationsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['amount_details'] = (node) => amountDetails =
        node.getObjectValue<AuthorizationsPostRequestBodyAmountDetails>(
            AuthorizationsPostRequestBodyAmountDetails
                .createFromDiscriminatorValue);
    deserializerMap['authorization_method'] = (node) => authorizationMethod =
        node.getEnumValue<AuthorizationsPostRequestBodyAuthorizationMethod>(
            (stringValue) => AuthorizationsPostRequestBodyAuthorizationMethod
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['card'] = (node) => card = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['fleet'] = (node) => fleet =
        node.getObjectValue<AuthorizationsPostRequestBodyFleet>(
            AuthorizationsPostRequestBodyFleet.createFromDiscriminatorValue);
    deserializerMap['fraud_disputability_likelihood'] = (node) =>
        fraudDisputabilityLikelihood = node.getEnumValue<
                AuthorizationsPostRequestBodyFraudDisputabilityLikelihood>(
            (stringValue) =>
                AuthorizationsPostRequestBodyFraudDisputabilityLikelihood.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['fuel'] = (node) => fuel =
        node.getObjectValue<AuthorizationsPostRequestBodyFuel>(
            AuthorizationsPostRequestBodyFuel.createFromDiscriminatorValue);
    deserializerMap['is_amount_controllable'] =
        (node) => isAmountControllable = node.getBoolValue();
    deserializerMap['merchant_amount'] =
        (node) => merchantAmount = node.getIntValue();
    deserializerMap['merchant_currency'] =
        (node) => merchantCurrency = node.getStringValue();
    deserializerMap['merchant_data'] = (node) => merchantData =
        node.getObjectValue<AuthorizationsPostRequestBodyMerchantData>(
            AuthorizationsPostRequestBodyMerchantData
                .createFromDiscriminatorValue);
    deserializerMap['network_data'] = (node) => networkData =
        node.getObjectValue<AuthorizationsPostRequestBodyNetworkData>(
            AuthorizationsPostRequestBodyNetworkData
                .createFromDiscriminatorValue);
    deserializerMap['risk_assessment'] = (node) => riskAssessment =
        node.getObjectValue<AuthorizationsPostRequestBodyRiskAssessment>(
            AuthorizationsPostRequestBodyRiskAssessment
                .createFromDiscriminatorValue);
    deserializerMap['verification_data'] = (node) => verificationData =
        node.getObjectValue<AuthorizationsPostRequestBodyVerificationData>(
            AuthorizationsPostRequestBodyVerificationData
                .createFromDiscriminatorValue);
    deserializerMap['wallet'] = (node) => wallet =
        node.getEnumValue<AuthorizationsPostRequestBodyWallet>((stringValue) =>
            AuthorizationsPostRequestBodyWallet.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeObjectValue<AuthorizationsPostRequestBodyAmountDetails>(
        'amount_details', amountDetails);
    writer.writeEnumValue<AuthorizationsPostRequestBodyAuthorizationMethod>(
        'authorization_method', authorizationMethod, (e) => e?.value);
    writer.writeStringValue('card', card);
    writer.writeStringValue('currency', currency);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<AuthorizationsPostRequestBodyFleet>('fleet', fleet);
    writer.writeEnumValue<
            AuthorizationsPostRequestBodyFraudDisputabilityLikelihood>(
        'fraud_disputability_likelihood',
        fraudDisputabilityLikelihood,
        (e) => e?.value);
    writer.writeObjectValue<AuthorizationsPostRequestBodyFuel>('fuel', fuel);
    writer.writeBoolValue('is_amount_controllable',
        value: isAmountControllable);
    writer.writeIntValue('merchant_amount', merchantAmount);
    writer.writeStringValue('merchant_currency', merchantCurrency);
    writer.writeObjectValue<AuthorizationsPostRequestBodyMerchantData>(
        'merchant_data', merchantData);
    writer.writeObjectValue<AuthorizationsPostRequestBodyNetworkData>(
        'network_data', networkData);
    writer.writeObjectValue<AuthorizationsPostRequestBodyRiskAssessment>(
        'risk_assessment', riskAssessment);
    writer.writeObjectValue<AuthorizationsPostRequestBodyVerificationData>(
        'verification_data', verificationData);
    writer.writeEnumValue<AuthorizationsPostRequestBodyWallet>(
        'wallet', wallet, (e) => e?.value);
  }
}
