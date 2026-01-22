// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_session_post_request_body_options_document_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [WithSessionPostRequestBodyOptionsDocumentMember1]
class WithSessionPostRequestBodyOptionsDocument implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [WithSessionPostRequestBodyOptionsDocumentMember1]
  WithSessionPostRequestBodyOptionsDocumentMember1?
      withSessionPostRequestBodyOptionsDocumentMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithSessionPostRequestBodyOptionsDocument createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = WithSessionPostRequestBodyOptionsDocument();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.withSessionPostRequestBodyOptionsDocumentMember1 =
          WithSessionPostRequestBodyOptionsDocumentMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (withSessionPostRequestBodyOptionsDocumentMember1 != null) {
      withSessionPostRequestBodyOptionsDocumentMember1!
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
      writer.writeObjectValue<WithSessionPostRequestBodyOptionsDocumentMember1>(
          null, withSessionPostRequestBodyOptionsDocumentMember1);
    }
  }
}
