// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_person_additional_tos_acceptances_account.dart';

/// auto generated
class TokensPostRequestBodyPersonAdditionalTosAcceptances
    implements AdditionalDataHolder, Parsable {
  ///  The account property
  TokensPostRequestBodyPersonAdditionalTosAcceptancesAccount? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  /// Instantiates a new [TokensPostRequestBodyPersonAdditionalTosAcceptances] and sets the default values.
  TokensPostRequestBodyPersonAdditionalTosAcceptances() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyPersonAdditionalTosAcceptances
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TokensPostRequestBodyPersonAdditionalTosAcceptances();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getObjectValue<
            TokensPostRequestBodyPersonAdditionalTosAcceptancesAccount>(
        TokensPostRequestBodyPersonAdditionalTosAcceptancesAccount
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TokensPostRequestBodyPersonAdditionalTosAcceptancesAccount>(
        'account', account);
    writer.writeAdditionalData(additionalData);
  }
}
