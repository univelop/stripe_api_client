// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_canceled.dart';
import './with_dispute_post_request_body_evidence_duplicate.dart';
import './with_dispute_post_request_body_evidence_fraudulent.dart';
import './with_dispute_post_request_body_evidence_merchandise_not_as_described.dart';
import './with_dispute_post_request_body_evidence_no_valid_authorization.dart';
import './with_dispute_post_request_body_evidence_not_received.dart';
import './with_dispute_post_request_body_evidence_other.dart';
import './with_dispute_post_request_body_evidence_reason.dart';
import './with_dispute_post_request_body_evidence_service_not_as_described.dart';

/// auto generated
/// Evidence provided for the dispute.
class WithDisputePostRequestBodyEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The canceled property
  WithDisputePostRequestBodyEvidenceCanceled? canceled;

  ///  The duplicate property
  WithDisputePostRequestBodyEvidenceDuplicate? duplicate;

  ///  The fraudulent property
  WithDisputePostRequestBodyEvidenceFraudulent? fraudulent;

  ///  The merchandise_not_as_described property
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribed?
      merchandiseNotAsDescribed;

  ///  The not_received property
  WithDisputePostRequestBodyEvidenceNotReceived? notReceived;

  ///  The no_valid_authorization property
  WithDisputePostRequestBodyEvidenceNoValidAuthorization? noValidAuthorization;

  ///  The other property
  WithDisputePostRequestBodyEvidenceOther? other;

  ///  The reason property
  WithDisputePostRequestBodyEvidenceReason? reason;

  ///  The service_not_as_described property
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribed?
      serviceNotAsDescribed;

  /// Instantiates a new [WithDisputePostRequestBodyEvidence] and sets the default values.
  WithDisputePostRequestBodyEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['canceled'] = (node) => canceled =
        node.getObjectValue<WithDisputePostRequestBodyEvidenceCanceled>(
            WithDisputePostRequestBodyEvidenceCanceled
                .createFromDiscriminatorValue);
    deserializerMap['duplicate'] = (node) => duplicate =
        node.getObjectValue<WithDisputePostRequestBodyEvidenceDuplicate>(
            WithDisputePostRequestBodyEvidenceDuplicate
                .createFromDiscriminatorValue);
    deserializerMap['fraudulent'] = (node) => fraudulent =
        node.getObjectValue<WithDisputePostRequestBodyEvidenceFraudulent>(
            WithDisputePostRequestBodyEvidenceFraudulent
                .createFromDiscriminatorValue);
    deserializerMap['merchandise_not_as_described'] = (node) =>
        merchandiseNotAsDescribed = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribed>(
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribed
                .createFromDiscriminatorValue);
    deserializerMap['not_received'] = (node) => notReceived =
        node.getObjectValue<WithDisputePostRequestBodyEvidenceNotReceived>(
            WithDisputePostRequestBodyEvidenceNotReceived
                .createFromDiscriminatorValue);
    deserializerMap['no_valid_authorization'] = (node) => noValidAuthorization =
        node.getObjectValue<
                WithDisputePostRequestBodyEvidenceNoValidAuthorization>(
            WithDisputePostRequestBodyEvidenceNoValidAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['other'] = (node) => other = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceOther>(
        WithDisputePostRequestBodyEvidenceOther.createFromDiscriminatorValue);
    deserializerMap['reason'] = (node) => reason =
        node.getEnumValue<WithDisputePostRequestBodyEvidenceReason>(
            (stringValue) => WithDisputePostRequestBodyEvidenceReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['service_not_as_described'] = (node) =>
        serviceNotAsDescribed = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceServiceNotAsDescribed>(
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribed
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithDisputePostRequestBodyEvidenceCanceled>(
        'canceled', canceled);
    writer.writeObjectValue<WithDisputePostRequestBodyEvidenceDuplicate>(
        'duplicate', duplicate);
    writer.writeObjectValue<WithDisputePostRequestBodyEvidenceFraudulent>(
        'fraudulent', fraudulent);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribed>(
        'merchandise_not_as_described', merchandiseNotAsDescribed);
    writer.writeObjectValue<WithDisputePostRequestBodyEvidenceNotReceived>(
        'not_received', notReceived);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceNoValidAuthorization>(
        'no_valid_authorization', noValidAuthorization);
    writer.writeObjectValue<WithDisputePostRequestBodyEvidenceOther>(
        'other', other);
    writer.writeEnumValue<WithDisputePostRequestBodyEvidenceReason>(
        'reason', reason, (e) => e?.value);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribed>(
        'service_not_as_described', serviceNotAsDescribed);
    writer.writeAdditionalData(additionalData);
  }
}
