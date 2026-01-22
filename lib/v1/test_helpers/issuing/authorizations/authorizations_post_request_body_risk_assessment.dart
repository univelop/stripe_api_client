// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_risk_assessment_card_testing_risk.dart';
import './authorizations_post_request_body_risk_assessment_fraud_risk.dart';
import './authorizations_post_request_body_risk_assessment_merchant_dispute_risk.dart';

/// auto generated
/// Stripe’s assessment of the fraud risk for this authorization.
class AuthorizationsPostRequestBodyRiskAssessment
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The card_testing_risk property
  AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk? cardTestingRisk;

  ///  The fraud_risk property
  AuthorizationsPostRequestBodyRiskAssessmentFraudRisk? fraudRisk;

  ///  The merchant_dispute_risk property
  AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk?
      merchantDisputeRisk;

  /// Instantiates a new [AuthorizationsPostRequestBodyRiskAssessment] and sets the default values.
  AuthorizationsPostRequestBodyRiskAssessment() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyRiskAssessment
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AuthorizationsPostRequestBodyRiskAssessment();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['card_testing_risk'] = (node) => cardTestingRisk =
        node.getObjectValue<
                AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk>(
            AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk
                .createFromDiscriminatorValue);
    deserializerMap['fraud_risk'] = (node) => fraudRisk = node
        .getObjectValue<AuthorizationsPostRequestBodyRiskAssessmentFraudRisk>(
            AuthorizationsPostRequestBodyRiskAssessmentFraudRisk
                .createFromDiscriminatorValue);
    deserializerMap['merchant_dispute_risk'] = (node) => merchantDisputeRisk =
        node.getObjectValue<
                AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk>(
            AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            AuthorizationsPostRequestBodyRiskAssessmentCardTestingRisk>(
        'card_testing_risk', cardTestingRisk);
    writer
        .writeObjectValue<AuthorizationsPostRequestBodyRiskAssessmentFraudRisk>(
            'fraud_risk', fraudRisk);
    writer.writeObjectValue<
            AuthorizationsPostRequestBodyRiskAssessmentMerchantDisputeRisk>(
        'merchant_dispute_risk', merchantDisputeRisk);
    writer.writeAdditionalData(additionalData);
  }
}
