// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_not_received_member1.dart';

/// auto generated
/// Composed type wrapper for classes [DisputesPostRequestBodyEvidenceNotReceivedMember1], [String?]
class DisputesPostRequestBodyEvidenceNotReceived implements Parsable {
  ///  Composed type representation for type [DisputesPostRequestBodyEvidenceNotReceivedMember1]
  DisputesPostRequestBodyEvidenceNotReceivedMember1?
      disputesPostRequestBodyEvidenceNotReceivedMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceNotReceived
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = DisputesPostRequestBodyEvidenceNotReceived();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.disputesPostRequestBodyEvidenceNotReceivedMember1 =
          DisputesPostRequestBodyEvidenceNotReceivedMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (disputesPostRequestBodyEvidenceNotReceivedMember1 != null) {
      disputesPostRequestBodyEvidenceNotReceivedMember1!
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
      writer
          .writeObjectValue<DisputesPostRequestBodyEvidenceNotReceivedMember1>(
              null, disputesPostRequestBodyEvidenceNotReceivedMember1);
    }
  }
}
