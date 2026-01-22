// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_service_not_as_described_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_service_not_as_described_member1_canceled_at.dart';
import './disputes_post_request_body_evidence_service_not_as_described_member1_cancellation_reason.dart';
import './disputes_post_request_body_evidence_service_not_as_described_member1_explanation.dart';
import './disputes_post_request_body_evidence_service_not_as_described_member1_received_at.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The canceled_at property
  DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt?
      canceledAt;

  ///  The cancellation_reason property
  DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason?
      cancellationReason;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation?
      explanation;

  ///  The received_at property
  DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt?
      receivedAt;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt>(
        DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'cancellation_reason'] = (node) => cancellationReason = node.getObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason>(
        DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason
            .createFromDiscriminatorValue);
    deserializerMap[
        'explanation'] = (node) => explanation = node.getObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation>(
        DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation
            .createFromDiscriminatorValue);
    deserializerMap['received_at'] = (node) => receivedAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt>(
        DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt>(
        'canceled_at', canceledAt);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason>(
        'cancellation_reason', cancellationReason);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt>(
        'received_at', receivedAt);
    writer.writeAdditionalData(additionalData);
  }
}
