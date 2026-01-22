// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tokens_post_request_body_person_documents_company_authorization.dart';
import './tokens_post_request_body_person_documents_passport.dart';
import './tokens_post_request_body_person_documents_visa.dart';

/// auto generated
class TokensPostRequestBodyPersonDocuments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The company_authorization property
  TokensPostRequestBodyPersonDocumentsCompanyAuthorization?
      companyAuthorization;

  ///  The passport property
  TokensPostRequestBodyPersonDocumentsPassport? passport;

  ///  The visa property
  TokensPostRequestBodyPersonDocumentsVisa? visa;

  /// Instantiates a new [TokensPostRequestBodyPersonDocuments] and sets the default values.
  TokensPostRequestBodyPersonDocuments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TokensPostRequestBodyPersonDocuments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TokensPostRequestBodyPersonDocuments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['company_authorization'] = (node) => companyAuthorization =
        node.getObjectValue<
                TokensPostRequestBodyPersonDocumentsCompanyAuthorization>(
            TokensPostRequestBodyPersonDocumentsCompanyAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['passport'] = (node) => passport =
        node.getObjectValue<TokensPostRequestBodyPersonDocumentsPassport>(
            TokensPostRequestBodyPersonDocumentsPassport
                .createFromDiscriminatorValue);
    deserializerMap['visa'] = (node) => visa = node.getObjectValue<
            TokensPostRequestBodyPersonDocumentsVisa>(
        TokensPostRequestBodyPersonDocumentsVisa.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            TokensPostRequestBodyPersonDocumentsCompanyAuthorization>(
        'company_authorization', companyAuthorization);
    writer.writeObjectValue<TokensPostRequestBodyPersonDocumentsPassport>(
        'passport', passport);
    writer.writeObjectValue<TokensPostRequestBodyPersonDocumentsVisa>(
        'visa', visa);
    writer.writeAdditionalData(additionalData);
  }
}
