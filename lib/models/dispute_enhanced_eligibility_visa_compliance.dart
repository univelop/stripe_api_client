// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_enhanced_eligibility_visa_compliance_status.dart';

/// auto generated
class DisputeEnhancedEligibilityVisaCompliance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Visa compliance eligibility status.
  DisputeEnhancedEligibilityVisaComplianceStatus? status;

  /// Instantiates a new [DisputeEnhancedEligibilityVisaCompliance] and sets the default values.
  DisputeEnhancedEligibilityVisaCompliance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputeEnhancedEligibilityVisaCompliance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputeEnhancedEligibilityVisaCompliance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<DisputeEnhancedEligibilityVisaComplianceStatus>(
            (stringValue) => DisputeEnhancedEligibilityVisaComplianceStatus
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<DisputeEnhancedEligibilityVisaComplianceStatus>(
        'status', status, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
