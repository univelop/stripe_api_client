// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_canceled_evidence.dart';
import './issuing_dispute_duplicate_evidence.dart';
import './issuing_dispute_evidence_reason.dart';
import './issuing_dispute_fraudulent_evidence.dart';
import './issuing_dispute_merchandise_not_as_described_evidence.dart';
import './issuing_dispute_no_valid_authorization_evidence.dart';
import './issuing_dispute_not_received_evidence.dart';
import './issuing_dispute_other_evidence.dart';
import './issuing_dispute_service_not_as_described_evidence.dart';

/// auto generated
class IssuingDisputeEvidence implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The canceled property
  IssuingDisputeCanceledEvidence? canceled;

  ///  The duplicate property
  IssuingDisputeDuplicateEvidence? duplicate;

  ///  The fraudulent property
  IssuingDisputeFraudulentEvidence? fraudulent;

  ///  The merchandise_not_as_described property
  IssuingDisputeMerchandiseNotAsDescribedEvidence? merchandiseNotAsDescribed;

  ///  The not_received property
  IssuingDisputeNotReceivedEvidence? notReceived;

  ///  The no_valid_authorization property
  IssuingDisputeNoValidAuthorizationEvidence? noValidAuthorization;

  ///  The other property
  IssuingDisputeOtherEvidence? other;

  ///  The reason for filing the dispute. Its value will match the field containing the evidence.
  IssuingDisputeEvidenceReason? reason;

  ///  The service_not_as_described property
  IssuingDisputeServiceNotAsDescribedEvidence? serviceNotAsDescribed;

  /// Instantiates a new [IssuingDisputeEvidence] and sets the default values.
  IssuingDisputeEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingDisputeEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['canceled'] = (node) => canceled =
        node.getObjectValue<IssuingDisputeCanceledEvidence>(
            IssuingDisputeCanceledEvidence.createFromDiscriminatorValue);
    deserializerMap['duplicate'] = (node) => duplicate =
        node.getObjectValue<IssuingDisputeDuplicateEvidence>(
            IssuingDisputeDuplicateEvidence.createFromDiscriminatorValue);
    deserializerMap['fraudulent'] = (node) => fraudulent =
        node.getObjectValue<IssuingDisputeFraudulentEvidence>(
            IssuingDisputeFraudulentEvidence.createFromDiscriminatorValue);
    deserializerMap['merchandise_not_as_described'] = (node) =>
        merchandiseNotAsDescribed = node
            .getObjectValue<IssuingDisputeMerchandiseNotAsDescribedEvidence>(
                IssuingDisputeMerchandiseNotAsDescribedEvidence
                    .createFromDiscriminatorValue);
    deserializerMap['not_received'] = (node) => notReceived =
        node.getObjectValue<IssuingDisputeNotReceivedEvidence>(
            IssuingDisputeNotReceivedEvidence.createFromDiscriminatorValue);
    deserializerMap['no_valid_authorization'] = (node) => noValidAuthorization =
        node.getObjectValue<IssuingDisputeNoValidAuthorizationEvidence>(
            IssuingDisputeNoValidAuthorizationEvidence
                .createFromDiscriminatorValue);
    deserializerMap['other'] = (node) => other =
        node.getObjectValue<IssuingDisputeOtherEvidence>(
            IssuingDisputeOtherEvidence.createFromDiscriminatorValue);
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<IssuingDisputeEvidenceReason>((stringValue) =>
            IssuingDisputeEvidenceReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['service_not_as_described'] = (node) =>
        serviceNotAsDescribed =
            node.getObjectValue<IssuingDisputeServiceNotAsDescribedEvidence>(
                IssuingDisputeServiceNotAsDescribedEvidence
                    .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<IssuingDisputeCanceledEvidence>(
        'canceled', canceled);
    writer.writeObjectValue<IssuingDisputeDuplicateEvidence>(
        'duplicate', duplicate);
    writer.writeObjectValue<IssuingDisputeFraudulentEvidence>(
        'fraudulent', fraudulent);
    writer.writeObjectValue<IssuingDisputeMerchandiseNotAsDescribedEvidence>(
        'merchandise_not_as_described', merchandiseNotAsDescribed);
    writer.writeObjectValue<IssuingDisputeNotReceivedEvidence>(
        'not_received', notReceived);
    writer.writeObjectValue<IssuingDisputeNoValidAuthorizationEvidence>(
        'no_valid_authorization', noValidAuthorization);
    writer.writeObjectValue<IssuingDisputeOtherEvidence>('other', other);
    writer.writeEnumValue<IssuingDisputeEvidenceReason>(
        'reason', reason, (e) => e?.value);
    writer.writeObjectValue<IssuingDisputeServiceNotAsDescribedEvidence>(
        'service_not_as_described', serviceNotAsDescribed);
    writer.writeAdditionalData(additionalData);
  }
}
