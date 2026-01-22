// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_risk_assessment_fraud_risk_level.dart';

/// auto generated
class AuthorizationsPostRequestBodyRiskAssessmentFraudRisk
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The level property
  AuthorizationsPostRequestBodyRiskAssessmentFraudRiskLevel? level;

  ///  The score property
  double? score;

  /// Instantiates a new [AuthorizationsPostRequestBodyRiskAssessmentFraudRisk] and sets the default values.
  AuthorizationsPostRequestBodyRiskAssessmentFraudRisk() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyRiskAssessmentFraudRisk
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AuthorizationsPostRequestBodyRiskAssessmentFraudRisk();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['level'] = (node) => level = node.getEnumValue<
            AuthorizationsPostRequestBodyRiskAssessmentFraudRiskLevel>(
        (stringValue) =>
            AuthorizationsPostRequestBodyRiskAssessmentFraudRiskLevel.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['score'] = (node) => score = node.getDoubleValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            AuthorizationsPostRequestBodyRiskAssessmentFraudRiskLevel>(
        'level', level, (e) => e?.value);
    writer.writeDoubleValue('score', score);
    writer.writeAdditionalData(additionalData);
  }
}
