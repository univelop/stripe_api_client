// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './people_post_request_body_documents_company_authorization.dart';
import './people_post_request_body_documents_passport.dart';
import './people_post_request_body_documents_visa.dart';

/// auto generated
/// Documents that may be submitted to satisfy various informational requests.
class PeoplePostRequestBodyDocuments implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The company_authorization property
  PeoplePostRequestBodyDocumentsCompanyAuthorization? companyAuthorization;

  ///  The passport property
  PeoplePostRequestBodyDocumentsPassport? passport;

  ///  The visa property
  PeoplePostRequestBodyDocumentsVisa? visa;

  /// Instantiates a new [PeoplePostRequestBodyDocuments] and sets the default values.
  PeoplePostRequestBodyDocuments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PeoplePostRequestBodyDocuments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PeoplePostRequestBodyDocuments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['company_authorization'] = (node) => companyAuthorization =
        node.getObjectValue<PeoplePostRequestBodyDocumentsCompanyAuthorization>(
            PeoplePostRequestBodyDocumentsCompanyAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['passport'] = (node) => passport = node.getObjectValue<
            PeoplePostRequestBodyDocumentsPassport>(
        PeoplePostRequestBodyDocumentsPassport.createFromDiscriminatorValue);
    deserializerMap['visa'] = (node) => visa =
        node.getObjectValue<PeoplePostRequestBodyDocumentsVisa>(
            PeoplePostRequestBodyDocumentsVisa.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PeoplePostRequestBodyDocumentsCompanyAuthorization>(
        'company_authorization', companyAuthorization);
    writer.writeObjectValue<PeoplePostRequestBodyDocumentsPassport>(
        'passport', passport);
    writer.writeObjectValue<PeoplePostRequestBodyDocumentsVisa>('visa', visa);
    writer.writeAdditionalData(additionalData);
  }
}
