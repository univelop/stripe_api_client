// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_authorization_fraud_challenge_channel.dart';
import './issuing_authorization_fraud_challenge_status.dart';
import './issuing_authorization_fraud_challenge_undeliverable_reason.dart';

/// auto generated
class IssuingAuthorizationFraudChallenge
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The method by which the fraud challenge was delivered to the cardholder.
  IssuingAuthorizationFraudChallengeChannel? channel;

  ///  The status of the fraud challenge.
  IssuingAuthorizationFraudChallengeStatus? status;

  ///  If the challenge is not deliverable, the reason why.
  IssuingAuthorizationFraudChallengeUndeliverableReason? undeliverableReason;

  /// Instantiates a new [IssuingAuthorizationFraudChallenge] and sets the default values.
  IssuingAuthorizationFraudChallenge() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingAuthorizationFraudChallenge createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingAuthorizationFraudChallenge();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['channel'] = (node) => channel =
        node.getEnumValue<IssuingAuthorizationFraudChallengeChannel>(
            (stringValue) => IssuingAuthorizationFraudChallengeChannel.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<IssuingAuthorizationFraudChallengeStatus>(
            (stringValue) => IssuingAuthorizationFraudChallengeStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['undeliverable_reason'] = (node) => undeliverableReason =
        node.getEnumValue<
                IssuingAuthorizationFraudChallengeUndeliverableReason>(
            (stringValue) =>
                IssuingAuthorizationFraudChallengeUndeliverableReason.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<IssuingAuthorizationFraudChallengeChannel>(
        'channel', channel, (e) => e?.value);
    writer.writeEnumValue<IssuingAuthorizationFraudChallengeStatus>(
        'status', status, (e) => e?.value);
    writer
        .writeEnumValue<IssuingAuthorizationFraudChallengeUndeliverableReason>(
            'undeliverable_reason', undeliverableReason, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
