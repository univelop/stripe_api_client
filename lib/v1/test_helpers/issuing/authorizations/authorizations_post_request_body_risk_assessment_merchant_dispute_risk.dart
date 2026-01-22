// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_risk_assessment_merchant_dispute_risk_risk_level.dart';

/// auto generated
class AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The dispute_rate property
  int? disputeRate;

  ///  The risk_level property
  AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRiskRiskLevel?
      riskLevel;

  /// Instantiates a new [AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk] and sets the default values.
  AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['dispute_rate'] =
        (node) => disputeRate = node.getIntValue();
    deserializerMap['risk_level'] = (node) => riskLevel = node.getEnumValue<
            AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRiskRiskLevel>(
        (stringValue) =>
            AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRiskRiskLevel
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('dispute_rate', disputeRate);
    writer.writeEnumValue<
            AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRiskRiskLevel>(
        'risk_level', riskLevel, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
