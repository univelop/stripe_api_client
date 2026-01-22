// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_account_individual_dob_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TokensPostRequestBodyAccountIndividualDobMember1]
class TokensPostRequestBodyAccountIndividualDob implements Parsable {
  ///  Composed type representation for type [String?]
  String? string_;

  ///  Composed type representation for type [TokensPostRequestBodyAccountIndividualDobMember1]
  TokensPostRequestBodyAccountIndividualDobMember1?
      tokensPostRequestBodyAccountIndividualDobMember1;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyAccountIndividualDob createFromDiscriminatorValue(
      ParseNode parseNode) {
    var result = TokensPostRequestBodyAccountIndividualDob();
    if (parseNode.getStringValue() != null) {
      result.string_ = parseNode.getStringValue();
    } else {
      result.tokensPostRequestBodyAccountIndividualDobMember1 =
          TokensPostRequestBodyAccountIndividualDobMember1();
    }
    return result;
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializers = <String, void Function(ParseNode)>{};
    if (tokensPostRequestBodyAccountIndividualDobMember1 != null) {
      tokensPostRequestBodyAccountIndividualDobMember1!
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
      writer.writeObjectValue<TokensPostRequestBodyAccountIndividualDobMember1>(
          null, tokensPostRequestBodyAccountIndividualDobMember1);
    }
  }
}
