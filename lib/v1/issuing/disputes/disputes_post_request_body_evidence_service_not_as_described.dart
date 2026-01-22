// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_service_not_as_described_member1.dart';

/// auto generated
/// Composed type wrapper for classes [DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1], [String?]
class DisputesPostRequestBodyEvidenceServiceNotAsDescribed implements Parsable {
  ///  Composed type representation for type [DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1]
  DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1?
      disputesPostRequestBodyEvidenceServiceNotAsDescribedMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceServiceNotAsDescribed
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = DisputesPostRequestBodyEvidenceServiceNotAsDescribed();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.disputesPostRequestBodyEvidenceServiceNotAsDescribedMember1 =
          DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (disputesPostRequestBodyEvidenceServiceNotAsDescribedMember1 != null) {
      disputesPostRequestBodyEvidenceServiceNotAsDescribedMember1!
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
              DisputesPostRequestBodyEvidenceServiceNotAsDescribedMember1>(
          null, disputesPostRequestBodyEvidenceServiceNotAsDescribedMember1);
    }
  }
}
