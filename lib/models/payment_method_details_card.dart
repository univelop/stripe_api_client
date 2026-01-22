// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_flows_private_payment_methods_card_details_api_resource_enterprise_features_extended_authorization_extended_authorization.dart';
import './payment_flows_private_payment_methods_card_details_api_resource_enterprise_features_incremental_authorization_incremental_authorization.dart';
import './payment_flows_private_payment_methods_card_details_api_resource_enterprise_features_overcapture_overcapture.dart';
import './payment_flows_private_payment_methods_card_details_api_resource_multicapture.dart';
import './payment_method_details_card_checks.dart';
import './payment_method_details_card_installments.dart';
import './payment_method_details_card_network_token.dart';
import './payment_method_details_card_regulated_status.dart';
import './payment_method_details_card_wallet.dart';
import './three_d_secure_details_charge.dart';

/// auto generated
class PaymentMethodDetailsCard implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The authorized amount.
  int? amountAuthorized;

  ///  Authorization code on the charge.
  String? authorizationCode;

  ///  Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
  String? brand;

  ///  When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
  int? captureBefore;

  ///  Check results by Card networks on Card address and CVC at time of payment.
  PaymentMethodDetailsCardChecks? checks;

  ///  Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
  String? country;

  ///  Two-digit number representing the card's expiration month.
  int? expMonth;

  ///  Four-digit number representing the card's expiration year.
  int? expYear;

  ///  The extended_authorization property
  PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization?
      extendedAuthorization;

  ///  Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.*As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
  String? fingerprint;

  ///  Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
  String? funding;

  ///  The incremental_authorization property
  PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization?
      incrementalAuthorization;

  ///  Installment details for this payment.For more information, see the [installments integration guide](https://docs.stripe.com/payments/installments).
  PaymentMethodDetailsCardInstallments? installments;

  ///  The last four digits of the card.
  String? last4;

  ///  ID of the mandate used to make this payment or created by it.
  String? mandate;

  ///  The multicapture property
  PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture?
      multicapture;

  ///  Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
  String? network;

  ///  If this card has network token credentials, this contains the details of the network token credentials.
  PaymentMethodDetailsCardNetworkToken? networkToken;

  ///  This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
  String? networkTransactionId;

  ///  The overcapture property
  PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture?
      overcapture;

  ///  Status of a card based on the card issuer.
  PaymentMethodDetailsCardRegulatedStatus? regulatedStatus;

  ///  Populated if this transaction used 3D Secure authentication.
  ThreeDSecureDetailsCharge? threeDSecure;

  ///  If this Card is part of a card wallet, this contains the details of the card wallet.
  PaymentMethodDetailsCardWallet? wallet;

  /// Instantiates a new [PaymentMethodDetailsCard] and sets the default values.
  PaymentMethodDetailsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodDetailsCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PaymentMethodDetailsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_authorized'] =
        (node) => amountAuthorized = node.getIntValue();
    deserializerMap['authorization_code'] =
        (node) => authorizationCode = node.getStringValue();
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['capture_before'] =
        (node) => captureBefore = node.getIntValue();
    deserializerMap['checks'] = (node) => checks =
        node.getObjectValue<PaymentMethodDetailsCardChecks>(
            PaymentMethodDetailsCardChecks.createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['extended_authorization'] = (node) =>
        extendedAuthorization = node.getObjectValue<
                PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization>(
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getStringValue();
    deserializerMap['incremental_authorization'] = (node) =>
        incrementalAuthorization = node.getObjectValue<
                PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization>(
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['installments'] = (node) => installments =
        node.getObjectValue<PaymentMethodDetailsCardInstallments>(
            PaymentMethodDetailsCardInstallments.createFromDiscriminatorValue);
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate'] = (node) => mandate = node.getStringValue();
    deserializerMap[
        'multicapture'] = (node) => multicapture = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture>(
        PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture
            .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network = node.getStringValue();
    deserializerMap['network_token'] = (node) => networkToken =
        node.getObjectValue<PaymentMethodDetailsCardNetworkToken>(
            PaymentMethodDetailsCardNetworkToken.createFromDiscriminatorValue);
    deserializerMap['network_transaction_id'] =
        (node) => networkTransactionId = node.getStringValue();
    deserializerMap[
        'overcapture'] = (node) => overcapture = node.getObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture>(
        PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture
            .createFromDiscriminatorValue);
    deserializerMap['regulated_status'] = (node) => regulatedStatus =
        node.getEnumValue<PaymentMethodDetailsCardRegulatedStatus>(
            (stringValue) => PaymentMethodDetailsCardRegulatedStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['three_d_secure'] = (node) => threeDSecure =
        node.getObjectValue<ThreeDSecureDetailsCharge>(
            ThreeDSecureDetailsCharge.createFromDiscriminatorValue);
    deserializerMap['wallet'] = (node) => wallet =
        node.getObjectValue<PaymentMethodDetailsCardWallet>(
            PaymentMethodDetailsCardWallet.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_authorized', amountAuthorized);
    writer.writeStringValue('authorization_code', authorizationCode);
    writer.writeStringValue('brand', brand);
    writer.writeIntValue('capture_before', captureBefore);
    writer.writeObjectValue<PaymentMethodDetailsCardChecks>('checks', checks);
    writer.writeStringValue('country', country);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesExtendedAuthorizationExtendedAuthorization>(
        'extended_authorization', extendedAuthorization);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('funding', funding);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesIncrementalAuthorizationIncrementalAuthorization>(
        'incremental_authorization', incrementalAuthorization);
    writer.writeObjectValue<PaymentMethodDetailsCardInstallments>(
        'installments', installments);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('mandate', mandate);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceMulticapture>(
        'multicapture', multicapture);
    writer.writeStringValue('network', network);
    writer.writeObjectValue<PaymentMethodDetailsCardNetworkToken>(
        'network_token', networkToken);
    writer.writeStringValue('network_transaction_id', networkTransactionId);
    writer.writeObjectValue<
            PaymentFlowsPrivatePaymentMethodsCardDetailsApiResourceEnterpriseFeaturesOvercaptureOvercapture>(
        'overcapture', overcapture);
    writer.writeEnumValue<PaymentMethodDetailsCardRegulatedStatus>(
        'regulated_status', regulatedStatus, (e) => e?.value);
    writer.writeObjectValue<ThreeDSecureDetailsCharge>(
        'three_d_secure', threeDSecure);
    writer.writeObjectValue<PaymentMethodDetailsCardWallet>('wallet', wallet);
    writer.writeAdditionalData(additionalData);
  }
}
