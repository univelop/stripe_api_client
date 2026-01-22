// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_enhanced_eligibility_visa_compelling_evidence3_required_actions.dart';
import './dispute_enhanced_eligibility_visa_compelling_evidence3_status.dart';

/// auto generated
class DisputeEnhancedEligibilityVisaCompellingEvidence3
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  List of actions required to qualify dispute for Visa Compelling Evidence 3.0 evidence submission.
  Iterable<DisputeEnhancedEligibilityVisaCompellingEvidence3RequiredActions>?
      requiredActions;

  ///  Visa Compelling Evidence 3.0 eligibility status.
  DisputeEnhancedEligibilityVisaCompellingEvidence3Status? status;

  /// Instantiates a new [DisputeEnhancedEligibilityVisaCompellingEvidence3] and sets the default values.
  DisputeEnhancedEligibilityVisaCompellingEvidence3() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputeEnhancedEligibilityVisaCompellingEvidence3
      createFromDiscriminatorValue(ParseNode parseNode) {
    return DisputeEnhancedEligibilityVisaCompellingEvidence3();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['required_actions'] = (node) => requiredActions =
        node.getCollectionOfEnumValues<
                DisputeEnhancedEligibilityVisaCompellingEvidence3RequiredActions>(
            (stringValue) =>
                DisputeEnhancedEligibilityVisaCompellingEvidence3RequiredActions
                    .values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['status'] = (node) => status = node
        .getEnumValue<DisputeEnhancedEligibilityVisaCompellingEvidence3Status>(
            (stringValue) =>
                DisputeEnhancedEligibilityVisaCompellingEvidence3Status.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeCollectionOfEnumValues<
            DisputeEnhancedEligibilityVisaCompellingEvidence3RequiredActions>(
        'required_actions', requiredActions, (e) => e?.value);
    writer.writeEnumValue<
            DisputeEnhancedEligibilityVisaCompellingEvidence3Status>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
