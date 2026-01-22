// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../balance_transaction.dart';
import '../issuing_authorization_amount_details.dart';
import '../issuing_authorization_fleet_data.dart';
import '../issuing_authorization_fraud_challenge.dart';
import '../issuing_authorization_fuel_data.dart';
import '../issuing_authorization_merchant_data.dart';
import '../issuing_authorization_network_data.dart';
import '../issuing_authorization_pending_request.dart';
import '../issuing_authorization_request.dart';
import '../issuing_authorization_treasury.dart';
import '../issuing_authorization_verification_data.dart';
import './authorization_authorization_method.dart';
import './authorization_cardholder.dart';
import './authorization_metadata.dart';
import './authorization_object.dart';
import './authorization_status.dart';
import './authorization_token.dart';
import './card.dart';
import './transaction.dart';

/// auto generated
/// When an [issued card](https://docs.stripe.com/issuing) is used to make a purchase, an Issuing `Authorization`object is created. [Authorizations](https://docs.stripe.com/issuing/purchases/authorizations) must be approved for thepurchase to be completed successfully.Related guide: [Issued card authorizations](https://docs.stripe.com/issuing/purchases/authorizations)
class Authorization implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The total amount that was authorized or rejected. This amount is in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `amount` should be the same as `merchant_amount`, unless `currency` and `merchant_currency` are different.
  int? amount;

  ///  Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://docs.stripe.com/currencies#zero-decimal).
  IssuingAuthorizationAmountDetails? amountDetails;

  ///  Whether the authorization has been approved.
  bool? approved;

  ///  How the card details were provided.
  AuthorizationAuthorizationMethod? authorizationMethod;

  ///  List of balance transactions associated with this authorization.
  Iterable<BalanceTransaction>? balanceTransactions;

  ///  You can [create physical or virtual cards](https://docs.stripe.com/issuing) that are issued to cardholders.
  Card? card;

  ///  The cardholder to whom this authorization belongs.
  AuthorizationCardholder? cardholder;

  ///  Time at which the object was created. Measured in seconds since the Unix epoch.
  int? created;

  ///  The currency of the cardholder. This currency can be different from the currency presented at authorization and the `merchant_currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  Fleet-specific information for authorizations using Fleet cards.
  IssuingAuthorizationFleetData? fleet;

  ///  Fraud challenges sent to the cardholder, if this authorization was declined for fraud risk reasons.
  Iterable<IssuingAuthorizationFraudChallenge>? fraudChallenges;

  ///  Information about fuel that was purchased with this transaction. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed.
  IssuingAuthorizationFuelData? fuel;

  ///  Unique identifier for the object.
  String? id;

  ///  Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
  bool? livemode;

  ///  The total amount that was authorized or rejected. This amount is in the `merchant_currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). `merchant_amount` should be the same as `amount`, unless `merchant_currency` and `currency` are different.
  int? merchantAmount;

  ///  The local currency that was presented to the cardholder for the authorization. This currency can be different from the cardholder currency and the `currency` field on this authorization. Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? merchantCurrency;

  ///  The merchant_data property
  IssuingAuthorizationMerchantData? merchantData;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
  AuthorizationMetadata? metadata;

  ///  Details about the authorization, such as identifiers, set by the card network.
  IssuingAuthorizationNetworkData? networkData;

  ///  String representing the object's type. Objects of the same type share the same value.
  AuthorizationObject? object;

  ///  The pending authorization request. This field will only be non-null during an `issuing_authorization.request` webhook.
  IssuingAuthorizationPendingRequest? pendingRequest;

  ///  History of every time a `pending_request` authorization was approved/declined, either by you directly or by Stripe (e.g. based on your spending_controls). If the merchant changes the authorization by performing an incremental authorization, you can look at this field to see the previous requests for the authorization. This field can be helpful in determining why a given authorization was approved/declined.
  Iterable<IssuingAuthorizationRequest>? requestHistory;

  ///  The current status of the authorization in its lifecycle.
  AuthorizationStatus? status;

  ///  [Token](https://docs.stripe.com/api/issuing/tokens/object) object used for this authorization. If a network token was not used for this authorization, this field will be null.
  AuthorizationToken? token;

  ///  List of [transactions](https://docs.stripe.com/api/issuing/transactions) associated with this authorization.
  Iterable<Transaction>? transactions;

  ///  [Treasury](https://docs.stripe.com/api/treasury) details related to this authorization if it was created on a [FinancialAccount](https://docs.stripe.com/api/treasury/financial_accounts).
  IssuingAuthorizationTreasury? treasury;

  ///  The verification_data property
  IssuingAuthorizationVerificationData? verificationData;

  ///  Whether the authorization bypassed fraud risk checks because the cardholder has previously completed a fraud challenge on a similar high-risk authorization from the same merchant.
  bool? verifiedByFraudChallenge;

  ///  The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
  String? wallet;

  /// Instantiates a new [Authorization] and sets the default values.
  Authorization() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static Authorization createFromDiscriminatorValue(ParseNode parseNode) {
    return Authorization();
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
    deserializerMap['authorization_method'] = (node) => authorizationMethod =
        node.getEnumValue<AuthorizationAuthorizationMethod>((stringValue) =>
            AuthorizationAuthorizationMethod.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['balance_transactions'] = (node) => balanceTransactions =
        node.getCollectionOfObjectValues<BalanceTransaction>(
            BalanceTransaction.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) =>
        card = node.getObjectValue<Card>(Card.createFromDiscriminatorValue);
    deserializerMap['cardholder'] = (node) => cardholder =
        node.getObjectValue<AuthorizationCardholder>(
            AuthorizationCardholder.createFromDiscriminatorValue);
    deserializerMap['created'] = (node) => created = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['fleet'] = (node) => fleet =
        node.getObjectValue<IssuingAuthorizationFleetData>(
            IssuingAuthorizationFleetData.createFromDiscriminatorValue);
    deserializerMap['fraud_challenges'] = (node) => fraudChallenges =
        node.getCollectionOfObjectValues<IssuingAuthorizationFraudChallenge>(
            IssuingAuthorizationFraudChallenge.createFromDiscriminatorValue);
    deserializerMap['fuel'] = (node) => fuel =
        node.getObjectValue<IssuingAuthorizationFuelData>(
            IssuingAuthorizationFuelData.createFromDiscriminatorValue);
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['livemode'] = (node) => livemode = node.getBoolValue();
    deserializerMap['merchant_amount'] =
        (node) => merchantAmount = node.getIntValue();
    deserializerMap['merchant_currency'] =
        (node) => merchantCurrency = node.getStringValue();
    deserializerMap['merchant_data'] = (node) => merchantData =
        node.getObjectValue<IssuingAuthorizationMerchantData>(
            IssuingAuthorizationMerchantData.createFromDiscriminatorValue);
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<AuthorizationMetadata>(
            AuthorizationMetadata.createFromDiscriminatorValue);
    deserializerMap['network_data'] = (node) => networkData =
        node.getObjectValue<IssuingAuthorizationNetworkData>(
            IssuingAuthorizationNetworkData.createFromDiscriminatorValue);
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<AuthorizationObject>((stringValue) =>
            AuthorizationObject.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['pending_request'] = (node) => pendingRequest =
        node.getObjectValue<IssuingAuthorizationPendingRequest>(
            IssuingAuthorizationPendingRequest.createFromDiscriminatorValue);
    deserializerMap['request_history'] = (node) => requestHistory =
        node.getCollectionOfObjectValues<IssuingAuthorizationRequest>(
            IssuingAuthorizationRequest.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<AuthorizationStatus>((stringValue) =>
            AuthorizationStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['token'] = (node) => token =
        node.getObjectValue<AuthorizationToken>(
            AuthorizationToken.createFromDiscriminatorValue);
    deserializerMap['transactions'] = (node) => transactions =
        node.getCollectionOfObjectValues<Transaction>(
            Transaction.createFromDiscriminatorValue);
    deserializerMap['treasury'] = (node) => treasury =
        node.getObjectValue<IssuingAuthorizationTreasury>(
            IssuingAuthorizationTreasury.createFromDiscriminatorValue);
    deserializerMap['verification_data'] = (node) => verificationData =
        node.getObjectValue<IssuingAuthorizationVerificationData>(
            IssuingAuthorizationVerificationData.createFromDiscriminatorValue);
    deserializerMap['verified_by_fraud_challenge'] =
        (node) => verifiedByFraudChallenge = node.getBoolValue();
    deserializerMap['wallet'] = (node) => wallet = node.getStringValue();
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
    writer.writeEnumValue<AuthorizationAuthorizationMethod>(
        'authorization_method', authorizationMethod, (e) => e?.value);
    writer.writeCollectionOfObjectValues<BalanceTransaction>(
        'balance_transactions', balanceTransactions);
    writer.writeObjectValue<Card>('card', card);
    writer.writeObjectValue<AuthorizationCardholder>('cardholder', cardholder);
    writer.writeIntValue('created', created);
    writer.writeStringValue('currency', currency);
    writer.writeObjectValue<IssuingAuthorizationFleetData>('fleet', fleet);
    writer.writeCollectionOfObjectValues<IssuingAuthorizationFraudChallenge>(
        'fraud_challenges', fraudChallenges);
    writer.writeObjectValue<IssuingAuthorizationFuelData>('fuel', fuel);
    writer.writeStringValue('id', id);
    writer.writeBoolValue('livemode', value: livemode);
    writer.writeIntValue('merchant_amount', merchantAmount);
    writer.writeStringValue('merchant_currency', merchantCurrency);
    writer.writeObjectValue<IssuingAuthorizationMerchantData>(
        'merchant_data', merchantData);
    writer.writeObjectValue<AuthorizationMetadata>('metadata', metadata);
    writer.writeObjectValue<IssuingAuthorizationNetworkData>(
        'network_data', networkData);
    writer.writeEnumValue<AuthorizationObject>(
        'object', object, (e) => e?.value);
    writer.writeObjectValue<IssuingAuthorizationPendingRequest>(
        'pending_request', pendingRequest);
    writer.writeCollectionOfObjectValues<IssuingAuthorizationRequest>(
        'request_history', requestHistory);
    writer.writeEnumValue<AuthorizationStatus>(
        'status', status, (e) => e?.value);
    writer.writeObjectValue<AuthorizationToken>('token', token);
    writer.writeCollectionOfObjectValues<Transaction>(
        'transactions', transactions);
    writer.writeObjectValue<IssuingAuthorizationTreasury>('treasury', treasury);
    writer.writeObjectValue<IssuingAuthorizationVerificationData>(
        'verification_data', verificationData);
    writer.writeBoolValue('verified_by_fraud_challenge',
        value: verifiedByFraudChallenge);
    writer.writeStringValue('wallet', wallet);
    writer.writeAdditionalData(additionalData);
  }
}
