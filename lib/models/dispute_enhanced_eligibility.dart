// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_enhanced_eligibility_visa_compelling_evidence3.dart';
import './dispute_enhanced_eligibility_visa_compliance.dart';

/// auto generated
class DisputeEnhancedEligibility implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The visa_compelling_evidence_3 property
  DisputeEnhancedEligibilityVisaCompellingEvidence3? visaCompellingEvidence3;

  ///  The visa_compliance property
  DisputeEnhancedEligibilityVisaCompliance? visaCompliance;

  /// Instantiates a new [DisputeEnhancedEligibility] and sets the default values.
  DisputeEnhancedEligibility() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputeEnhancedEligibility createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputeEnhancedEligibility();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['visa_compelling_evidence_3'] = (node) =>
        visaCompellingEvidence3 = node
            .getObjectValue<DisputeEnhancedEligibilityVisaCompellingEvidence3>(
                DisputeEnhancedEligibilityVisaCompellingEvidence3
                    .createFromDiscriminatorValue);
    deserializerMap['visa_compliance'] = (node) => visaCompliance =
        node.getObjectValue<DisputeEnhancedEligibilityVisaCompliance>(
            DisputeEnhancedEligibilityVisaCompliance
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<DisputeEnhancedEligibilityVisaCompellingEvidence3>(
        'visa_compelling_evidence_3', visaCompellingEvidence3);
    writer.writeObjectValue<DisputeEnhancedEligibilityVisaCompliance>(
        'visa_compliance', visaCompliance);
    writer.writeAdditionalData(additionalData);
  }
}
