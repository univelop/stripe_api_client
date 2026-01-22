// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_fraudulent_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithDisputePostRequestBodyEvidenceFraudulentMember1]
class WithDisputePostRequestBodyEvidenceFraudulent implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithDisputePostRequestBodyEvidenceFraudulentMember1]
  WithDisputePostRequestBodyEvidenceFraudulentMember1?
      withDisputePostRequestBodyEvidenceFraudulentMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceFraudulent
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithDisputePostRequestBodyEvidenceFraudulent();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withDisputePostRequestBodyEvidenceFraudulentMember1 =
          WithDisputePostRequestBodyEvidenceFraudulentMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withDisputePostRequestBodyEvidenceFraudulentMember1 != null) {
      withDisputePostRequestBodyEvidenceFraudulentMember1!
          .getFieldDeserializers()
          .forEach((k, v) => deserializers.putIfAbsent(k, () => v));
    }
    return deserializers;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    if (string_ != null) {
      writer.writeStringValue(null, string_);
    } else {
      writer.writeObjectValue<
              WithDisputePostRequestBodyEvidenceFraudulentMember1>(
          null, withDisputePostRequestBodyEvidenceFraudulentMember1);
    }
  }
}
