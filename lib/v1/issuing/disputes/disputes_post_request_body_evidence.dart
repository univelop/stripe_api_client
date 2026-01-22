// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_canceled.dart';
import './disputes_post_request_body_evidence_duplicate.dart';
import './disputes_post_request_body_evidence_fraudulent.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described.dart';
import './disputes_post_request_body_evidence_no_valid_authorization.dart';
import './disputes_post_request_body_evidence_not_received.dart';
import './disputes_post_request_body_evidence_other.dart';
import './disputes_post_request_body_evidence_reason.dart';
import './disputes_post_request_body_evidence_service_not_as_described.dart';

/// auto generated
/// Evidence provided for the dispute.
class DisputesPostRequestBodyEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The canceled property
  DisputesPostRequestBodyEvidenceCanceled? canceled;

  ///  The duplicate property
  DisputesPostRequestBodyEvidenceDuplicate? duplicate;

  ///  The fraudulent property
  DisputesPostRequestBodyEvidenceFraudulent? fraudulent;

  ///  The merchandise_not_as_described property
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribed?
      merchandiseNotAsDescribed;

  ///  The not_received property
  DisputesPostRequestBodyEvidenceNotReceived? notReceived;

  ///  The no_valid_authorization property
  DisputesPostRequestBodyEvidenceNoValidAuthorization? noValidAuthorization;

  ///  The other property
  DisputesPostRequestBodyEvidenceOther? other;

  ///  The reason property
  DisputesPostRequestBodyEvidenceReason? reason;

  ///  The service_not_as_described property
  DisputesPostRequestBodyEvidenceServiceNotAsDescribed? serviceNotAsDescribed;

  /// Instantiates a new [DisputesPostRequestBodyEvidence] and sets the default values.
  DisputesPostRequestBodyEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputesPostRequestBodyEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['canceled'] = (node) => canceled = node.getObjectValue<
            DisputesPostRequestBodyEvidenceCanceled>(
        DisputesPostRequestBodyEvidenceCanceled.createFromDiscriminatorValue);
    deserializerMap['duplicate'] = (node) => duplicate = node.getObjectValue<
            DisputesPostRequestBodyEvidenceDuplicate>(
        DisputesPostRequestBodyEvidenceDuplicate.createFromDiscriminatorValue);
    deserializerMap['fraudulent'] = (node) => fraudulent = node.getObjectValue<
            DisputesPostRequestBodyEvidenceFraudulent>(
        DisputesPostRequestBodyEvidenceFraudulent.createFromDiscriminatorValue);
    deserializerMap['merchandise_not_as_described'] = (node) =>
        merchandiseNotAsDescribed = node.getObjectValue<
                DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribed>(
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribed
                .createFromDiscriminatorValue);
    deserializerMap['not_received'] = (node) => notReceived =
        node.getObjectValue<DisputesPostRequestBodyEvidenceNotReceived>(
            DisputesPostRequestBodyEvidenceNotReceived
                .createFromDiscriminatorValue);
    deserializerMap['no_valid_authorization'] = (node) => noValidAuthorization =
        node.getObjectValue<
                DisputesPostRequestBodyEvidenceNoValidAuthorization>(
            DisputesPostRequestBodyEvidenceNoValidAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['other'] = (node) => other =
        node.getObjectValue<DisputesPostRequestBodyEvidenceOther>(
            DisputesPostRequestBodyEvidenceOther.createFromDiscriminatorValue);
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<DisputesPostRequestBodyEvidenceReason>(
            (stringValue) => DisputesPostRequestBodyEvidenceReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['service_not_as_described'] = (node) =>
        serviceNotAsDescribed = node.getObjectValue<
                DisputesPostRequestBodyEvidenceServiceNotAsDescribed>(
            DisputesPostRequestBodyEvidenceServiceNotAsDescribed
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<DisputesPostRequestBodyEvidenceCanceled>(
        'canceled', canceled);
    writer.writeObjectValue<DisputesPostRequestBodyEvidenceDuplicate>(
        'duplicate', duplicate);
    writer.writeObjectValue<DisputesPostRequestBodyEvidenceFraudulent>(
        'fraudulent', fraudulent);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribed>(
        'merchandise_not_as_described', merchandiseNotAsDescribed);
    writer.writeObjectValue<DisputesPostRequestBodyEvidenceNotReceived>(
        'not_received', notReceived);
    writer
        .writeObjectValue<DisputesPostRequestBodyEvidenceNoValidAuthorization>(
            'no_valid_authorization', noValidAuthorization);
    writer.writeObjectValue<DisputesPostRequestBodyEvidenceOther>(
        'other', other);
    writer.writeEnumValue<DisputesPostRequestBodyEvidenceReason>(
        'reason', reason, (e) => e?.value);
    writer
        .writeObjectValue<DisputesPostRequestBodyEvidenceServiceNotAsDescribed>(
            'service_not_as_described', serviceNotAsDescribed);
    writer.writeAdditionalData(additionalData);
  }
}
