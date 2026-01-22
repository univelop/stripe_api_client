// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_network_token_address.dart';
import './issuing_network_token_wallet_provider_card_number_source.dart';
import './issuing_network_token_wallet_provider_reason_codes.dart';
import './issuing_network_token_wallet_provider_suggested_decision.dart';

/// auto generated
class IssuingNetworkTokenWalletProvider
    implements AdditionalDataHolder, Parsable {
  ///  The wallet provider-given account ID of the digital wallet the token belongs to.
  String? accountId;

  ///  An evaluation on the trustworthiness of the wallet account between 1 and 5. A higher score indicates more trustworthy.
  int? accountTrustScore;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The cardholder_address property
  IssuingNetworkTokenAddress? cardholderAddress;

  ///  The name of the cardholder tokenizing the card.
  String? cardholderName;

  ///  The method used for tokenizing a card.
  IssuingNetworkTokenWalletProviderCardNumberSource? cardNumberSource;

  ///  An evaluation on the trustworthiness of the device. A higher score indicates more trustworthy.
  int? deviceTrustScore;

  ///  The hashed email address of the cardholder's account with the wallet provider.
  String? hashedAccountEmailAddress;

  ///  The reasons for suggested tokenization given by the card network.
  Iterable<IssuingNetworkTokenWalletProviderReasonCodes>? reasonCodes;

  ///  The recommendation on responding to the tokenization request.
  IssuingNetworkTokenWalletProviderSuggestedDecision? suggestedDecision;

  ///  The version of the standard for mapping reason codes followed by the wallet provider.
  String? suggestedDecisionVersion;

  /// Instantiates a new [IssuingNetworkTokenWalletProvider] and sets the default values.
  IssuingNetworkTokenWalletProvider() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingNetworkTokenWalletProvider createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingNetworkTokenWalletProvider();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_id'] = (node) => accountId = node.getStringValue();
    deserializerMap['account_trust_score'] =
        (node) => accountTrustScore = node.getIntValue();
    deserializerMap['cardholder_address'] = (node) => cardholderAddress =
        node.getObjectValue<IssuingNetworkTokenAddress>(
            IssuingNetworkTokenAddress.createFromDiscriminatorValue);
    deserializerMap['cardholder_name'] =
        (node) => cardholderName = node.getStringValue();
    deserializerMap['card_number_source'] = (node) => cardNumberSource =
        node.getEnumValue<IssuingNetworkTokenWalletProviderCardNumberSource>(
            (stringValue) => IssuingNetworkTokenWalletProviderCardNumberSource
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['device_trust_score'] =
        (node) => deviceTrustScore = node.getIntValue();
    deserializerMap['hashed_account_email_address'] =
        (node) => hashedAccountEmailAddress = node.getStringValue();
    deserializerMap['reason_codes'] = (node) => reasonCodes =
        node.getCollectionOfEnumValues<
                IssuingNetworkTokenWalletProviderReasonCodes>(
            (stringValue) => IssuingNetworkTokenWalletProviderReasonCodes.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['suggested_decision'] = (node) => suggestedDecision =
        node.getEnumValue<IssuingNetworkTokenWalletProviderSuggestedDecision>(
            (stringValue) => IssuingNetworkTokenWalletProviderSuggestedDecision
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['suggested_decision_version'] =
        (node) => suggestedDecisionVersion = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_id', accountId);
    writer.writeIntValue('account_trust_score', accountTrustScore);
    writer.writeObjectValue<IssuingNetworkTokenAddress>(
        'cardholder_address', cardholderAddress);
    writer.writeStringValue('cardholder_name', cardholderName);
    writer.writeEnumValue<IssuingNetworkTokenWalletProviderCardNumberSource>(
        'card_number_source', cardNumberSource, (e) => e?.value);
    writer.writeIntValue('device_trust_score', deviceTrustScore);
    writer.writeStringValue(
        'hashed_account_email_address', hashedAccountEmailAddress);
    writer.writeCollectionOfEnumValues<
            IssuingNetworkTokenWalletProviderReasonCodes>(
        'reason_codes', reasonCodes, (e) => e?.value);
    writer.writeEnumValue<IssuingNetworkTokenWalletProviderSuggestedDecision>(
        'suggested_decision', suggestedDecision, (e) => e?.value);
    writer.writeStringValue(
        'suggested_decision_version', suggestedDecisionVersion);
    writer.writeAdditionalData(additionalData);
  }
}
