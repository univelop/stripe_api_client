// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './persons_post_request_body_documents_company_authorization.dart';
import './persons_post_request_body_documents_passport.dart';
import './persons_post_request_body_documents_visa.dart';

/// auto generated
/// Documents that may be submitted to satisfy various informational requests.
class PersonsPostRequestBodyDocuments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The company_authorization property
  PersonsPostRequestBodyDocumentsCompanyAuthorization? companyAuthorization;

  ///  The passport property
  PersonsPostRequestBodyDocumentsPassport? passport;

  ///  The visa property
  PersonsPostRequestBodyDocumentsVisa? visa;

  /// Instantiates a new [PersonsPostRequestBodyDocuments] and sets the default values.
  PersonsPostRequestBodyDocuments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PersonsPostRequestBodyDocuments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PersonsPostRequestBodyDocuments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['company_authorization'] = (node) => companyAuthorization =
        node.getObjectValue<
                PersonsPostRequestBodyDocumentsCompanyAuthorization>(
            PersonsPostRequestBodyDocumentsCompanyAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['passport'] = (node) => passport = node.getObjectValue<
            PersonsPostRequestBodyDocumentsPassport>(
        PersonsPostRequestBodyDocumentsPassport.createFromDiscriminatorValue);
    deserializerMap['visa'] = (node) => visa =
        node.getObjectValue<PersonsPostRequestBodyDocumentsVisa>(
            PersonsPostRequestBodyDocumentsVisa.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<PersonsPostRequestBodyDocumentsCompanyAuthorization>(
            'company_authorization', companyAuthorization);
    writer.writeObjectValue<PersonsPostRequestBodyDocumentsPassport>(
        'passport', passport);
    writer.writeObjectValue<PersonsPostRequestBodyDocumentsVisa>('visa', visa);
    writer.writeAdditionalData(additionalData);
  }
}
