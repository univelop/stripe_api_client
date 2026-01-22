// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_service_not_as_described_evidence_additional_documentation.dart';

/// auto generated
class IssuingDisputeServiceNotAsDescribedEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeServiceNotAsDescribedEvidenceAdditionalDocumentation?
      additionalDocumentation;

  ///  Date when order was canceled.
  int? canceledAt;

  ///  Reason for canceling the order.
  String? cancellationReason;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  ///  Date when the product was received.
  int? receivedAt;

  /// Instantiates a new [IssuingDisputeServiceNotAsDescribedEvidence] and sets the default values.
  IssuingDisputeServiceNotAsDescribedEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeServiceNotAsDescribedEvidence
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingDisputeServiceNotAsDescribedEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                IssuingDisputeServiceNotAsDescribedEvidenceAdditionalDocumentation>(
            IssuingDisputeServiceNotAsDescribedEvidenceAdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['canceled_at'] = (node) => canceledAt = node.getIntValue();
    deserializerMap['cancellation_reason'] =
        (node) => cancellationReason = node.getStringValue();
    deserializerMap['explanation'] =
        (node) => explanation = node.getStringValue();
    deserializerMap['received_at'] = (node) => receivedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IssuingDisputeServiceNotAsDescribedEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeIntValue('canceled_at', canceledAt);
    writer.writeStringValue('cancellation_reason', cancellationReason);
    writer.writeStringValue('explanation', explanation);
    writer.writeIntValue('received_at', receivedAt);
    writer.writeAdditionalData(additionalData);
  }
}
