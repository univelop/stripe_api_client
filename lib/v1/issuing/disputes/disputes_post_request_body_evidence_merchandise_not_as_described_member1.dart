// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described_member1_additional_documentation.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described_member1_explanation.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described_member1_received_at.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described_member1_return_description.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described_member1_return_status.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described_member1_returned_at.dart';

/// auto generated
class DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_documentation property
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation?
      additionalDocumentation;

  ///  The explanation property
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation?
      explanation;

  ///  The received_at property
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt?
      receivedAt;

  ///  The return_description property
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription?
      returnDescription;

  ///  The returned_at property
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt?
      returnedAt;

  ///  The return_status property
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus?
      returnStatus;

  /// Instantiates a new [DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1] and sets the default values.
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation>(
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap[
        'explanation'] = (node) => explanation = node.getObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation>(
        DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation
            .createFromDiscriminatorValue);
    deserializerMap['received_at'] = (node) => receivedAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt>(
        DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'return_description'] = (node) => returnDescription = node.getObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription>(
        DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription
            .createFromDiscriminatorValue);
    deserializerMap['returned_at'] = (node) => returnedAt = node.getObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt>(
        DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt
            .createFromDiscriminatorValue);
    deserializerMap[
        'return_status'] = (node) => returnStatus = node.getEnumValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus>(
        (stringValue) =>
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus
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
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1AdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1Explanation>(
        'explanation', explanation);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReceivedAt>(
        'received_at', receivedAt);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnDescription>(
        'return_description', returnDescription);
    writer.writeObjectValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnedAt>(
        'returned_at', returnedAt);
    writer.writeEnumValue<
            DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1ReturnStatus>(
        'return_status', returnStatus, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
