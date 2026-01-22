// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_service_not_as_described_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_service_not_as_described_member1_canceled_at.dart';
import './with_dispute_post_request_body_evidence_service_not_as_described_member1_cancellation_reason.dart';
import './with_dispute_post_request_body_evidence_service_not_as_described_member1_explanation.dart';
import './with_dispute_post_request_body_evidence_service_not_as_described_member1_received_at.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The canceled_at property
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt?
      canceledAt;

  ///  The cancellation_reason property
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason?
      cancellationReason;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation?
      explanation;

  ///  The received_at property
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt?
      receivedAt;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt>(
        WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'cancellation_reason'] = (node) => cancellationReason = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason>(
        WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason
            .createFromDiscriminatorValue);
    deserializerMap[
        'explanation'] = (node) => explanation = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation>(
        WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation
            .createFromDiscriminatorValue);
    deserializerMap['received_at'] = (node) => receivedAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt>(
        WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CanceledAt>(
        'canceled_at', canceledAt);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1CancellationReason>(
        'cancellation_reason', cancellationReason);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1ReceivedAt>(
        'received_at', receivedAt);
    writer.writeAdditionalData(additionalData);
  }
}
