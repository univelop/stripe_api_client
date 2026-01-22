// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './charge_outcome_advice_code.dart';
import './charge_outcome_rule.dart';

/// auto generated
class ChargeOutcome implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  An enumerated value providing a more detailed explanation on [how to proceed with an error](https://docs.stripe.com/declines#retrying-issuer-declines).
  ChargeOutcomeAdviceCode? adviceCode;

  ///  For charges declined by the network, a 2 digit code which indicates the advice returned by the network on how to proceed with an error.
  String? networkAdviceCode;

  ///  For charges declined by the network, an alphanumeric code which indicates the reason the charge failed.
  String? networkDeclineCode;

  ///  Possible values are `approved_by_network`, `declined_by_network`, `not_sent_to_network`, and `reversed_after_approval`. The value `reversed_after_approval` indicates the payment was [blocked by Stripe](https://docs.stripe.com/declines#blocked-payments) after bank authorization, and may temporarily appear as "pending" on a cardholder's statement.
  String? networkStatus;

  ///  An enumerated value providing a more detailed explanation of the outcome's `type`. Charges blocked by Radar's default block rule have the value `highest_risk_level`. Charges placed in review by Radar's default review rule have the value `elevated_risk_level`. Charges blocked because the payment is unlikely to be authorized have the value `low_probability_of_authorization`. Charges authorized, blocked, or placed in review by custom rules have the value `rule`. See [understanding declines](https://docs.stripe.com/declines) for more details.
  String? reason;

  ///  Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are `normal`, `elevated`, `highest`. For non-card payments, and card-based payments predating the public assignment of risk levels, this field will have the value `not_assessed`. In the event of an error in the evaluation, this field will have the value `unknown`. This field is only available with Radar.
  String? riskLevel;

  ///  Stripe Radar's evaluation of the riskiness of the payment. Possible values for evaluated payments are between 0 and 100. For non-card payments, card-based payments predating the public assignment of risk scores, or in the event of an error during evaluation, this field will not be present. This field is only available with Radar for Fraud Teams.
  int? riskScore;

  ///  The ID of the Radar rule that matched the payment, if applicable.
  ChargeOutcomeRule? rule;

  ///  A human-readable description of the outcome type and reason, designed for you (the recipient of the payment), not your customer.
  String? sellerMessage;

  ///  Possible values are `authorized`, `manual_review`, `issuer_declined`, `blocked`, and `invalid`. See [understanding declines](https://docs.stripe.com/declines) and [Radar reviews](https://docs.stripe.com/radar/reviews) for details.
  String? type_;

  /// Instantiates a new [ChargeOutcome] and sets the default values.
  ChargeOutcome() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ChargeOutcome createFromDiscriminatorValue(ParseNode parseNode) {
    return ChargeOutcome();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['advice_code'] = (node) => adviceCode =
        node.getEnumValue<ChargeOutcomeAdviceCode>((stringValue) =>
            ChargeOutcomeAdviceCode.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['network_advice_code'] =
        (node) => networkAdviceCode = node.getStringValue();
    deserializerMap['network_decline_code'] =
        (node) => networkDeclineCode = node.getStringValue();
    deserializerMap['network_status'] =
        (node) => networkStatus = node.getStringValue();
    deserializerMap['reason'] = (node) => reason = node.getStringValue();
    deserializerMap['risk_level'] = (node) => riskLevel = node.getStringValue();
    deserializerMap['risk_score'] = (node) => riskScore = node.getIntValue();
    deserializerMap['rule'] = (node) => rule =
        node.getObjectValue<ChargeOutcomeRule>(
            ChargeOutcomeRule.createFromDiscriminatorValue);
    deserializerMap['seller_message'] =
        (node) => sellerMessage = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<ChargeOutcomeAdviceCode>(
        'advice_code', adviceCode, (e) => e?.value);
    writer.writeStringValue('network_advice_code', networkAdviceCode);
    writer.writeStringValue('network_decline_code', networkDeclineCode);
    writer.writeStringValue('network_status', networkStatus);
    writer.writeStringValue('reason', reason);
    writer.writeStringValue('risk_level', riskLevel);
    writer.writeIntValue('risk_score', riskScore);
    writer.writeObjectValue<ChargeOutcomeRule>('rule', rule);
    writer.writeStringValue('seller_message', sellerMessage);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
