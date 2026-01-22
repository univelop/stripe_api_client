// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_dispute_no_valid_authorization_evidence_additional_documentation.dart';

/// auto generated
class IssuingDisputeNoValidAuthorizationEvidence
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
  IssuingDisputeNoValidAuthorizationEvidenceAdditionalDocumentation?
      additionalDocumentation;

  ///  Explanation of why the cardholder is disputing this transaction.
  String? explanation;

  /// Instantiates a new [IssuingDisputeNoValidAuthorizationEvidence] and sets the default values.
  IssuingDisputeNoValidAuthorizationEvidence() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingDisputeNoValidAuthorizationEvidence
      createFromDiscriminatorValue(ParseNode parseNode) {
    return IssuingDisputeNoValidAuthorizationEvidence();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_documentation'] = (node) =>
        additionalDocumentation = node.getObjectValue<
                IssuingDisputeNoValidAuthorizationEvidenceAdditionalDocumentation>(
            IssuingDisputeNoValidAuthorizationEvidenceAdditionalDocumentation
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
            IssuingDisputeNoValidAuthorizationEvidenceAdditionalDocumentation>(
        'additional_documentation', additionalDocumentation);
    writer.writeStringValue('explanation', explanation);
    writer.writeAdditionalData(additionalData);
  }
}
