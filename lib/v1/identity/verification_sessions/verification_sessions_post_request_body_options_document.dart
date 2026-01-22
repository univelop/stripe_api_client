// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './verification_sessions_post_request_body_options_document_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [VerificationSessionsPostRequestBodyOptionsDocumentMember1]
class VerificationSessionsPostRequestBodyOptionsDocument implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [VerificationSessionsPostRequestBodyOptionsDocumentMember1]
  VerificationSessionsPostRequestBodyOptionsDocumentMember1?
      verificationSessionsPostRequestBodyOptionsDocumentMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static VerificationSessionsPostRequestBodyOptionsDocument
      createFromDiscriminatorValue(ParseNode parseNode) {
    var result = VerificationSessionsPostRequestBodyOptionsDocument();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.verificationSessionsPostRequestBodyOptionsDocumentMember1 =
          VerificationSessionsPostRequestBodyOptionsDocumentMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (verificationSessionsPostRequestBodyOptionsDocumentMember1 != null) {
      verificationSessionsPostRequestBodyOptionsDocumentMember1!
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
              VerificationSessionsPostRequestBodyOptionsDocumentMember1>(
          null, verificationSessionsPostRequestBodyOptionsDocumentMember1);
    }
  }
}
