// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_card_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TokensPostRequestBodyCardMember1]
class TokensPostRequestBodyCard implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [TokensPostRequestBodyCardMember1]
  TokensPostRequestBodyCardMember1? tokensPostRequestBodyCardMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = TokensPostRequestBodyCard();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.tokensPostRequestBodyCardMember1 =
          TokensPostRequestBodyCardMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (tokensPostRequestBodyCardMember1 != null) {
      tokensPostRequestBodyCardMember1!
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
      writer.writeObjectValue<TokensPostRequestBodyCardMember1>(
          null, tokensPostRequestBodyCardMember1);
    }
  }
}
