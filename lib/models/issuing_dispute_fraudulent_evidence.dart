// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_fraudulent_evidence_additional_documentation.dart';

/// auto generated
class IssuingDisputeFraudulentEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeFraudulentEvidenceAdditionalDocumentation?
      additionalDocumentation;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  /// Instantiates a new [IssuingDisputeFraudulentEvidence] and sets the default values.
  IssuingDisputeFraudulentEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeFraudulentEvidence createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingDisputeFraudulentEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                IssuingDisputeFraudulentEvidenceAdditionalDocumentation>(
            IssuingDisputeFraudulentEvidenceAdditionalDocumentation
                .createFromDiscriminatorValue);
    deserializerMap['explanation'] =
        (node) => explanation = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            IssuingDisputeFraudulentEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeStringValue('explanation', explanation);
    writer.writeAdditionalData(additionalData);
  }
}
