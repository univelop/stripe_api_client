// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_account_individual_verification_additional_document.dart';
import './tokens_post_request_body_account_individual_verification_document.dart';

/// auto generated
class TokensPostRequestBodyAccountIndividualVerification
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The additional_document property
  TokensPostRequestBodyAccountIndividualVerificationAdditionalDocument?
      additionalDocument;

  ///  The document property
  TokensPostRequestBodyAccountIndividualVerificationDocument? document;

  /// Instantiates a new [TokensPostRequestBodyAccountIndividualVerification] and sets the default values.
  TokensPostRequestBodyAccountIndividualVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyAccountIndividualVerification
      createFromDiscriminatorValue(ParseNode parseNode) {
    return TokensPostRequestBodyAccountIndividualVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_document'] = (node) => additionalDocument =
        node.getObjectValue<
                TokensPostRequestBodyAccountIndividualVerificationAdditionalDocument>(
            TokensPostRequestBodyAccountIndividualVerificationAdditionalDocument
                .createFromDiscriminatorValue);
    deserializerMap['document'] = (node) => document = node.getObjectValue<
            TokensPostRequestBodyAccountIndividualVerificationDocument>(
        TokensPostRequestBodyAccountIndividualVerificationDocument
            .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TokensPostRequestBodyAccountIndividualVerificationAdditionalDocument>(
        'additional_document', additionalDocument);
    writer.writeObjectValue<
            TokensPostRequestBodyAccountIndividualVerificationDocument>(
        'document', document);
    writer.writeAdditionalData(additionalData);
  }
}
