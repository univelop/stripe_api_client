// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_no_valid_authorization_member1.dart';

/// auto generated
/// Composed type wrapper for classes [DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1], [String?]
class DisputesPostRequestBodyEvidenceNoValidAuthorization implements Parsable {
  ///  Composed type representation for type [DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1]
  DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1?
      disputesPostRequestBodyEvidenceNoValidAuthorizationMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceNoValidAuthorization
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = DisputesPostRequestBodyEvidenceNoValidAuthorization();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.disputesPostRequestBodyEvidenceNoValidAuthorizationMember1 =
          DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (disputesPostRequestBodyEvidenceNoValidAuthorizationMember1 != null) {
      disputesPostRequestBodyEvidenceNoValidAuthorizationMember1!
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
              DisputesPostRequestBodyEvidenceNoValidAuthorizationMember1>(
          null, disputesPostRequestBodyEvidenceNoValidAuthorizationMember1);
    }
  }
}
