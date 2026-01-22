// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_other_member1.dart';

/// auto generated
/// Composed type wrapper for classes [DisputesPostRequestBodyEvidenceOtherMember1], [String?]
class DisputesPostRequestBodyEvidenceOther implements Parsable {
  ///  Composed type representation for type [DisputesPostRequestBodyEvidenceOtherMember1]
  DisputesPostRequestBodyEvidenceOtherMember1?
      disputesPostRequestBodyEvidenceOtherMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceOther createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = DisputesPostRequestBodyEvidenceOther();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.disputesPostRequestBodyEvidenceOtherMember1 =
          DisputesPostRequestBodyEvidenceOtherMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (disputesPostRequestBodyEvidenceOtherMember1 != null) {
      disputesPostRequestBodyEvidenceOtherMember1!
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
      writer.writeObjectValue<DisputesPostRequestBodyEvidenceOtherMember1>(
          null, disputesPostRequestBodyEvidenceOtherMember1);
    }
  }
}
