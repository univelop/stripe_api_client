// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_risk_assessment_card_testing_risk_risk_level.dart';

/// auto generated
class AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The invalid_account_number_decline_rate_past_hour property
  int? invalidAccountNumberDeclineRatePastHour;

  ///  The invalid_credentials_decline_rate_past_hour property
  int? invalidCredentialsDeclineRatePastHour;

  ///  The risk_level property
  AuthorizationsPostRequestBodyRiskAssessmentCardTestingRiskRiskLevel?
      riskLevel;

  /// Instantiates a new [AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk] and sets the default values.
  AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['invalid_account_number_decline_rate_past_hour'] =
        (node) => invalidAccountNumberDeclineRatePastHour = node.getIntValue();
    deserializerMap['invalid_credentials_decline_rate_past_hour'] =
        (node) => invalidCredentialsDeclineRatePastHour = node.getIntValue();
    deserializerMap['risk_level'] = (node) => riskLevel = node.getEnumValue<
            AuthorizationsPostRequestBodyRiskAssessmentCardTestingRiskRiskLevel>(
        (stringValue) =>
            AuthorizationsPostRequestBodyRiskAssessmentCardTestingRiskRiskLevel
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('invalid_account_number_decline_rate_past_hour',
        invalidAccountNumberDeclineRatePastHour);
    writer.writeIntValue('invalid_credentials_decline_rate_past_hour',
        invalidCredentialsDeclineRatePastHour);
    writer.writeEnumValue<
            AuthorizationsPostRequestBodyRiskAssessmentCardTestingRiskRiskLevel>(
        'risk_level', riskLevel, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
