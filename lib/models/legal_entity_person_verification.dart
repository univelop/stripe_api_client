// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './legal_entity_person_verification_document.dart';

/// auto generated
class LegalEntityPersonVerification implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  A document showing address, either a passport, local ID card, or utility bill from a well-known utility company.
  LegalEntityPersonVerificationDocument? additionalDocument;

  ///  A user-displayable string describing the verification state for the person. For example, this may say "Provided identity information could not be verified".
  String? details;

  ///  One of `document_address_mismatch`, `document_dob_mismatch`, `document_duplicate_type`, `document_id_number_mismatch`, `document_name_mismatch`, `document_nationality_mismatch`, `failed_keyed_identity`, or `failed_other`. A machine-readable code specifying the verification state for the person.
  String? detailsCode;

  ///  The document property
  LegalEntityPersonVerificationDocument? document;

  ///  The state of verification for the person. Possible values are `unverified`, `pending`, or `verified`. Please refer [guide](https://docs.stripe.com/connect/handling-api-verification) to handle verification updates.
  String? status;

  /// Instantiates a new [LegalEntityPersonVerification] and sets the default values.
  LegalEntityPersonVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static LegalEntityPersonVerification createFromDiscriminatorValue(
      ParseNode parseNode) {
    return LegalEntityPersonVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['additional_document'] = (node) => additionalDocument =
        node.getObjectValue<LegalEntityPersonVerificationDocument>(
            LegalEntityPersonVerificationDocument.createFromDiscriminatorValue);
    deserializerMap['details'] = (node) => details = node.getStringValue();
    deserializerMap['details_code'] =
        (node) => detailsCode = node.getStringValue();
    deserializerMap['document'] = (node) => document =
        node.getObjectValue<LegalEntityPersonVerificationDocument>(
            LegalEntityPersonVerificationDocument.createFromDiscriminatorValue);
    deserializerMap['status'] = (node) => status = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<LegalEntityPersonVerificationDocument>(
        'additional_document', additionalDocument);
    writer.writeStringValue('details', details);
    writer.writeStringValue('details_code', detailsCode);
    writer.writeObjectValue<LegalEntityPersonVerificationDocument>(
        'document', document);
    writer.writeStringValue('status', status);
    writer.writeAdditionalData(additionalData);
  }
}
