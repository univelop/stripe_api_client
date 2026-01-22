// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_brand.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_funding.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_network.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_checks.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_installments.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_network_token.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_three_d_secure.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_resource_wallet.dart';
import './payments_primitives_payment_records_resource_payment_method_card_details_stored_credential_usage.dart';

/// auto generated
/// Details of the card used for this payment attempt.
class PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The authorization code of the payment.
  String? authorizationCode;

  ///  Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand? brand;

  ///  When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
  int? captureBefore;

  ///  Check results by Card networks on Card address and CVC at time of payment.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks?
      checks;

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
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding?
      funding;

  ///  Issuer identification number of the card.
  String? iin;

  ///  Installment details for this payment.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments?
      installments;

  ///  The name of the card's issuing bank.
  String? issuer;

  ///  The last four digits of the card.
  String? last4;

  ///  Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork?
      network;

  ///  Advice code from the card network for the failed payment.
  String? networkAdviceCode;

  ///  Decline code from the card network for the failed payment.
  String? networkDeclineCode;

  ///  If this card has network token credentials, this contains the details of the network token credentials.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceNetworkToken?
      networkToken;

  ///  This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
  String? networkTransactionId;

  ///  The transaction type that was passed for an off-session, Merchant-Initiated transaction, one of `recurring` or `unscheduled`.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage?
      storedCredentialUsage;

  ///  Populated if this transaction used 3D Secure authentication.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure?
      threeDSecure;

  ///  If this Card is part of a card wallet, this contains the details of the card wallet.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet?
      wallet;

  /// Instantiates a new [PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails] and sets the default values.
  PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['authorization_code'] =
        (node) => authorizationCode = node.getStringValue();
    deserializerMap['brand'] = (node) => brand = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['capture_before'] =
        (node) => captureBefore = node.getIntValue();
    deserializerMap['checks'] = (node) => checks = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks
            .createFromDiscriminatorValue);
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['funding'] = (node) => funding = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['iin'] = (node) => iin = node.getStringValue();
    deserializerMap[
        'installments'] = (node) => installments = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments
            .createFromDiscriminatorValue);
    deserializerMap['issuer'] = (node) => issuer = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork>(
        (stringValue) =>
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['network_advice_code'] =
        (node) => networkAdviceCode = node.getStringValue();
    deserializerMap['network_decline_code'] =
        (node) => networkDeclineCode = node.getStringValue();
    deserializerMap[
        'network_token'] = (node) => networkToken = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceNetworkToken>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceNetworkToken
            .createFromDiscriminatorValue);
    deserializerMap['network_transaction_id'] =
        (node) => networkTransactionId = node.getStringValue();
    deserializerMap['stored_credential_usage'] = (node) =>
        storedCredentialUsage = node.getEnumValue<
                PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage>(
            (stringValue) =>
                PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap[
        'three_d_secure'] = (node) => threeDSecure = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure
            .createFromDiscriminatorValue);
    deserializerMap['wallet'] = (node) => wallet = node.getObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet>(
        PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('authorization_code', authorizationCode);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsBrand>(
        'brand', brand, (e) => e?.value);
    writer.writeIntValue('capture_before', captureBefore);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceChecks>(
        'checks', checks);
    writer.writeStringValue('country', country);
    writer.writeStringValue('description', description);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsFunding>(
        'funding', funding, (e) => e?.value);
    writer.writeStringValue('iin', iin);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceInstallments>(
        'installments', installments);
    writer.writeStringValue('issuer', issuer);
    writer.writeStringValue('last4', last4);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork>(
        'network', network, (e) => e?.value);
    writer.writeStringValue('network_advice_code', networkAdviceCode);
    writer.writeStringValue('network_decline_code', networkDeclineCode);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceNetworkToken>(
        'network_token', networkToken);
    writer.writeStringValue('network_transaction_id', networkTransactionId);
    writer.writeEnumValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsStoredCredentialUsage>(
        'stored_credential_usage', storedCredentialUsage, (e) => e?.value);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceThreeDSecure>(
        'three_d_secure', threeDSecure);
    writer.writeObjectValue<
            PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsResourceWallet>(
        'wallet', wallet);
    writer.writeAdditionalData(additionalData);
  }
}
