// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_merchandise_not_as_described_member1_additional_documentation.dart';
import './with_dispute_post_request_body_evidence_merchandise_not_as_described_member1_explanation.dart';
import './with_dispute_post_request_body_evidence_merchandise_not_as_described_member1_received_at.dart';
import './with_dispute_post_request_body_evidence_merchandise_not_as_described_member1_return_description.dart';
import './with_dispute_post_request_body_evidence_merchandise_not_as_described_member1_return_status.dart';
import './with_dispute_post_request_body_evidence_merchandise_not_as_described_member1_returned_at.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation?
      explanation;

  ///  The received_at property
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt?
      receivedAt;

  ///  The return_description property
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription?
      returnDescription;

  ///  The returned_at property
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt?
      returnedAt;

  ///  The return_status property
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus?
      returnStatus;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation>(
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap[
        'explanation'] = (node) => explanation = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation>(
        WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation
            .createFromDiscriminatorValue);
    deserializerMap['received_at'] = (node) => receivedAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt>(
        WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'return_description'] = (node) => returnDescription = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription>(
        WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription
            .createFromDiscriminatorValue);
    deserializerMap['returned_at'] = (node) => returnedAt = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt>(
        WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'return_status'] = (node) => returnStatus = node.getEnumValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus>(
        (stringValue) =>
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt>(
        'received_at', receivedAt);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription>(
        'return_description', returnDescription);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt>(
        'returned_at', returnedAt);
    writer.writeEnumValue<
            WithDisputePostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus>(
        'return_status', returnStatus, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
