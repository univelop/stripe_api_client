// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_merchandise_not_as_described_evidence_additional_documentation.dart';
import './issuing_dispute_merchandise_not_as_described_evidence_return_status.dart';

/// auto generated
class IssuingDisputeMerchandiseNotAsDescribedEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation?
      additionalDocumentation;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  ///  Date when the product was received.
  int? receivedAt;

  ///  Description of the cardholder's attempt to return the product.
  String? returnDescription;

  ///  Date when the product was returned or attempted to be returned.
  int? returnedAt;

  ///  Result of cardholder's attempt to return the product.
  IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus? returnStatus;

  /// Instantiates a new [IssuingDisputeMerchandiseNotAsDescribedEvidence] and sets the default values.
  IssuingDisputeMerchandiseNotAsDescribedEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeMerchandiseNotAsDescribedEvidence
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingDisputeMerchandiseNotAsDescribedEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation>(
            IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['explanation'] =
        (node) => explanation = node.getStringValue();
    deserializerMap['received_at'] = (node) => receivedAt = node.getIntValue();
    deserializerMap['return_description'] =
        (node) => returnDescription = node.getStringValue();
    deserializerMap['returned_at'] = (node) => returnedAt = node.getIntValue();
    deserializerMap['return_status'] = (node) => returnStatus =
        node.getEnumValue<
                IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus>(
            (stringValue) =>
                IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus
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
            IssuingDisputeMerchandiseNotAsDescribedEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeStringValue('explanation', explanation);
    writer.writeIntValue('received_at', receivedAt);
    writer.writeStringValue('return_description', returnDescription);
    writer.writeIntValue('returned_at', returnedAt);
    writer.writeEnumValue<
            IssuingDisputeMerchandiseNotAsDescribedEvidenceReturnStatus>(
        'return_status', returnStatus, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
