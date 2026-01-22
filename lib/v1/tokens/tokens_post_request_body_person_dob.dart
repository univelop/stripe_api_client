// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_person_dob_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TokensPostRequestBodyPersonDobMember1]
class TokensPostRequestBodyPersonDob implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [TokensPostRequestBodyPersonDobMember1]
  TokensPostRequestBodyPersonDobMember1? tokensPostRequestBodyPersonDobMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyPersonDob createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = TokensPostRequestBodyPersonDob();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.tokensPostRequestBodyPersonDobMember1 =
          TokensPostRequestBodyPersonDobMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (tokensPostRequestBodyPersonDobMember1 != null) {
      tokensPostRequestBodyPersonDobMember1!
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
      writer.writeObjectValue<TokensPostRequestBodyPersonDobMember1>(
          null, tokensPostRequestBodyPersonDobMember1);
    }
  }
}
