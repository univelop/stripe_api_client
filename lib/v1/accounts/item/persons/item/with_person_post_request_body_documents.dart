// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_person_post_request_body_documents_company_authorization.dart';
import './with_person_post_request_body_documents_passport.dart';
import './with_person_post_request_body_documents_visa.dart';

/// auto generated
/// Documents that may be submitted to satisfy various informational requests.
class WithPersonPostRequestBodyDocuments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The company_authorization property
  WithPersonPostRequestBodyDocumentsCompanyAuthorization? companyAuthorization;

  ///  The passport property
  WithPersonPostRequestBodyDocumentsPassport? passport;

  ///  The visa property
  WithPersonPostRequestBodyDocumentsVisa? visa;

  /// Instantiates a new [WithPersonPostRequestBodyDocuments] and sets the default values.
  WithPersonPostRequestBodyDocuments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPersonPostRequestBodyDocuments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPersonPostRequestBodyDocuments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['company_authorization'] = (node) => companyAuthorization =
        node.getObjectValue<
                WithPersonPostRequestBodyDocumentsCompanyAuthorization>(
            WithPersonPostRequestBodyDocumentsCompanyAuthorization
                .createFromDiscriminatorValue);
    deserializerMap['passport'] = (node) => passport =
        node.getObjectValue<WithPersonPostRequestBodyDocumentsPassport>(
            WithPersonPostRequestBodyDocumentsPassport
                .createFromDiscriminatorValue);
    deserializerMap['visa'] = (node) => visa = node.getObjectValue<
            WithPersonPostRequestBodyDocumentsVisa>(
        WithPersonPostRequestBodyDocumentsVisa.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithPersonPostRequestBodyDocumentsCompanyAuthorization>(
        'company_authorization', companyAuthorization);
    writer.writeObjectValue<WithPersonPostRequestBodyDocumentsPassport>(
        'passport', passport);
    writer.writeObjectValue<WithPersonPostRequestBodyDocumentsVisa>(
        'visa', visa);
    writer.writeAdditionalData(additionalData);
  }
}
