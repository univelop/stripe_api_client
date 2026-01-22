// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_card_member1_networks_preferred.dart';

/// auto generated
class TokensPostRequestBodyCardMember1Networks
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The preferred property
  TokensPostRequestBodyCardMember1NetworksPreferred? preferred;

  /// Instantiates a new [TokensPostRequestBodyCardMember1Networks] and sets the default values.
  TokensPostRequestBodyCardMember1Networks() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyCardMember1Networks createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyCardMember1Networks();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['preferred'] = (node) => preferred =
        node.getEnumValue<TokensPostRequestBodyCardMember1NetworksPreferred>(
            (stringValue) => TokensPostRequestBodyCardMember1NetworksPreferred
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<TokensPostRequestBodyCardMember1NetworksPreferred>(
        'preferred', preferred, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
