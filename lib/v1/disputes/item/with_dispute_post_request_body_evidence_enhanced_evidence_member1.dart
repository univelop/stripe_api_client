// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compelling_evidence3.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1_visa_compliance.dart';

/// auto generated
class WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The visa_compelling_evidence_3 property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3?
      visaCompellingEvidence3;

  ///  The visa_compliance property
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance?
      visaCompliance;

  /// Instantiates a new [WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1] and sets the default values.
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['visa_compelling_evidence_3'] = (node) =>
        visaCompellingEvidence3 = node.getObjectValue<
                WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3>(
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3
                .createFromDiscriminatorValue);
    deserializerMap[
        'visa_compliance'] = (node) => visaCompliance = node.getObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance>(
        WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompellingEvidence3>(
        'visa_compelling_evidence_3', visaCompellingEvidence3);
    writer.writeObjectValue<
            WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1VisaCompliance>(
        'visa_compliance', visaCompliance);
    writer.writeAdditionalData(additionalData);
  }
}
