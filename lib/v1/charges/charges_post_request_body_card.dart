// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './charges_post_request_body_card_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ChargesPostRequestBodyCardMember1], [String?]
class ChargesPostRequestBodyCard implements Parsable {
  ///  Composed type representation for type [ChargesPostRequestBodyCardMember1]
  ChargesPostRequestBodyCardMember1? chargesPostRequestBodyCardMember1;

  ///  Composed type representation for type [String?]
  String? string_;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ChargesPostRequestBodyCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = ChargesPostRequestBodyCard();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.chargesPostRequestBodyCardMember1 =
          ChargesPostRequestBodyCardMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (chargesPostRequestBodyCardMember1 != null) {
      chargesPostRequestBodyCardMember1!
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
      writer.writeObjectValue<ChargesPostRequestBodyCardMember1>(
          null, chargesPostRequestBodyCardMember1);
    }
  }
}
