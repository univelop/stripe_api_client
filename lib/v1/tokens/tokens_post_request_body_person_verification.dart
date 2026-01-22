// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_person_verification_additional_document.dart';
import './tokens_post_request_body_person_verification_document.dart';

/// auto generated
class TokensPostRequestBodyPersonVerification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_document property
  TokensPostRequestBodyPersonVerificationAdditionalDocument? additionalDocument;

  ///  The document property
  TokensPostRequestBodyPersonVerificationDocument? document;

  /// Instantiates a new [TokensPostRequestBodyPersonVerification] and sets the default values.
  TokensPostRequestBodyPersonVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyPersonVerification createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyPersonVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_document'] = (node) => additionalDocument =
        node.getObjectValue<
                TokensPostRequestBodyPersonVerificationAdditionalDocument>(
            TokensPostRequestBodyPersonVerificationAdditionalDocument
                .createFromDiscriminatorValue);
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<TokensPostRequestBodyPersonVerificationDocument>(
            TokensPostRequestBodyPersonVerificationDocument
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TokensPostRequestBodyPersonVerificationAdditionalDocument>(
        'additional_document', additionalDocument);
    writer.writeObjectValue<TokensPostRequestBodyPersonVerificationDocument>(
        'document', document);
    writer.writeAdditionalData(additionalData);
  }
}
