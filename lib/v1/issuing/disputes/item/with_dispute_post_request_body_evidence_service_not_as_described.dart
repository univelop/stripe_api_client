// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_dispute_post_request_body_evidence_service_not_as_described_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1]
class WithDisputePostRequestBodyEvidenceServiceNotAsDescribed
    implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1]
  WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1?
      withDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithDisputePostRequestBodyEvidenceServiceNotAsDescribed
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = WithDisputePostRequestBodyEvidenceServiceNotAsDescribed();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1 =
          WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1 !=
        null) {
      withDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1!
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
              WithDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1>(
          null, withDisputePostRequestBodyEvidenceServiceNotAsDescribedMember1);
    }
  }
}
