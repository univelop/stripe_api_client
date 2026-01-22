// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './disputes_post_request_body_evidence_merchandise_not_as_described_member1.dart';

/// auto generated
/// Composed type wrapper for classes [DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1], [String?]
class DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribed
    implements Parsable {
  ///  Composed type representation for type [DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1]
  DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1?
      disputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribed
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribed();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.disputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1 =
          DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (disputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1 !=
        null) {
      disputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1!
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
              DisputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1>(
          null,
          disputesPostRequestBodyEvidenceMerchandiseNotAsDescribedMember1);
    }
  }
}
