// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_duplicate_member1.dart';

/// auto generated
/// Composed type wrapper for classes [DisputesPostRequestBodyEvidenceDuplicateMember1], [String?]
class DisputesPostRequestBodyEvidenceDuplicate implements Parsable {
  ///  Composed type representation for type [DisputesPostRequestBodyEvidenceDuplicateMember1]
  DisputesPostRequestBodyEvidenceDuplicateMember1?
      disputesPostRequestBodyEvidenceDuplicateMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceDuplicate createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = DisputesPostRequestBodyEvidenceDuplicate();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.disputesPostRequestBodyEvidenceDuplicateMember1 =
          DisputesPostRequestBodyEvidenceDuplicateMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (disputesPostRequestBodyEvidenceDuplicateMember1 != null) {
      disputesPostRequestBodyEvidenceDuplicateMember1!
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
      writer.writeObjectValue<DisputesPostRequestBodyEvidenceDuplicateMember1>(
          null, disputesPostRequestBodyEvidenceDuplicateMember1);
    }
  }
}
