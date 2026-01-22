// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_enhanced_evidence_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1]
class WithDisputePostRequestBodyEvidenceEnhancedEvidence implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1]
  WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1?
      withDisputePostRequestBodyEvidenceEnhancedEvidenceMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceEnhancedEvidence
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithDisputePostRequestBodyEvidenceEnhancedEvidence();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withDisputePostRequestBodyEvidenceEnhancedEvidenceMember1 =
          WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withDisputePostRequestBodyEvidenceEnhancedEvidenceMember1 != null) {
      withDisputePostRequestBodyEvidenceEnhancedEvidenceMember1!
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
              WithDisputePostRequestBodyEvidenceEnhancedEvidenceMember1>(
          null, withDisputePostRequestBodyEvidenceEnhancedEvidenceMember1);
    }
  }
}
