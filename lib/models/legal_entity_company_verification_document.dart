// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './legal_entity_company_verification_document_back.dart';
import './legal_entity_company_verification_document_front.dart';

/// auto generated
class LegalEntityCompanyVerificationDocument
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The back of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `additional_verification`. Note that `additional_verification` files are [not downloadable](/file-upload#uploading-a-file).
  LegalEntityCompanyVerificationDocumentBack? back;

  ///  A user-displayable string describing the verification state of this document.
  String? details;

  ///  One of `document_corrupt`, `document_expired`, `document_failed_copy`, `document_failed_greyscale`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_not_readable`, `document_not_uploaded`, `document_type_not_supported`, or `document_too_large`. A machine-readable code specifying the verification state for this document.
  String? detailsCode;

  ///  The front of a document returned by a [file upload](https://api.stripe.com#create_file) with a `purpose` value of `additional_verification`. Note that `additional_verification` files are [not downloadable](/file-upload#uploading-a-file).
  LegalEntityCompanyVerificationDocumentFront? front;

  /// Instantiates a new [LegalEntityCompanyVerificationDocument] and sets the default values.
  LegalEntityCompanyVerificationDocument() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LegalEntityCompanyVerificationDocument createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LegalEntityCompanyVerificationDocument();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['back'] = (node) => back =
        node.getObjectValue<LegalEntityCompanyVerificationDocumentBack>(
            LegalEntityCompanyVerificationDocumentBack
                .createFromDiscriminatorValue);
    deserializerMap['details'] = (node) => details = node.getStringValue();
    deserializerMap['details_code'] =
        (node) => detailsCode = node.getStringValue();
    deserializerMap['front'] = (node) => front =
        node.getObjectValue<LegalEntityCompanyVerificationDocumentFront>(
            LegalEntityCompanyVerificationDocumentFront
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<LegalEntityCompanyVerificationDocumentBack>(
        'back', back);
    writer.writeStringValue('details', details);
    writer.writeStringValue('details_code', detailsCode);
    writer.writeObjectValue<LegalEntityCompanyVerificationDocumentFront>(
        'front', front);
    writer.writeAdditionalData(additionalData);
  }
}
