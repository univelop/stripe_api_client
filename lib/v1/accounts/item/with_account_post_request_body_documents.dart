// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_documents_bank_account_ownership_verification.dart';
import './with_account_post_request_body_documents_company_license.dart';
import './with_account_post_request_body_documents_company_memorandum_of_association.dart';
import './with_account_post_request_body_documents_company_ministerial_decree.dart';
import './with_account_post_request_body_documents_company_registration_verification.dart';
import './with_account_post_request_body_documents_company_tax_id_verification.dart';
import './with_account_post_request_body_documents_proof_of_address.dart';
import './with_account_post_request_body_documents_proof_of_registration.dart';
import './with_account_post_request_body_documents_proof_of_ultimate_beneficial_ownership.dart';

/// auto generated
/// Documents that may be submitted to satisfy various informational requests.
class WithAccountPostRequestBodyDocuments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_account_ownership_verification property
  WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification?
      bankAccountOwnershipVerification;

  ///  The company_license property
  WithAccountPostRequestBodyDocumentsCompanyLicense? companyLicense;

  ///  The company_memorandum_of_association property
  WithAccountPostRequestBodyDocumentsCompanyMemorandumOfAssociation?
      companyMemorandumOfAssociation;

  ///  The company_ministerial_decree property
  WithAccountPostRequestBodyDocumentsCompanyMinisterialDecree?
      companyMinisterialDecree;

  ///  The company_registration_verification property
  WithAccountPostRequestBodyDocumentsCompanyRegistrationVerification?
      companyRegistrationVerification;

  ///  The company_tax_id_verification property
  WithAccountPostRequestBodyDocumentsCompanyTaxIdVerification?
      companyTaxIdVerification;

  ///  The proof_of_address property
  WithAccountPostRequestBodyDocumentsProofOfAddress? proofOfAddress;

  ///  The proof_of_registration property
  WithAccountPostRequestBodyDocumentsProofOfRegistration? proofOfRegistration;

  ///  The proof_of_ultimate_beneficial_ownership property
  WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership?
      proofOfUltimateBeneficialOwnership;

  /// Instantiates a new [WithAccountPostRequestBodyDocuments] and sets the default values.
  WithAccountPostRequestBodyDocuments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyDocuments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBodyDocuments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_account_ownership_verification'] = (node) =>
        bankAccountOwnershipVerification = node.getObjectValue<
                WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification>(
            WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification
                .createFromDiscriminatorValue);
    deserializerMap['company_license'] = (node) => companyLicense =
        node.getObjectValue<WithAccountPostRequestBodyDocumentsCompanyLicense>(
            WithAccountPostRequestBodyDocumentsCompanyLicense
                .createFromDiscriminatorValue);
    deserializerMap['company_memorandum_of_association'] = (node) =>
        companyMemorandumOfAssociation = node.getObjectValue<
                WithAccountPostRequestBodyDocumentsCompanyMemorandumOfAssociation>(
            WithAccountPostRequestBodyDocumentsCompanyMemorandumOfAssociation
                .createFromDiscriminatorValue);
    deserializerMap['company_ministerial_decree'] = (node) =>
        companyMinisterialDecree = node.getObjectValue<
                WithAccountPostRequestBodyDocumentsCompanyMinisterialDecree>(
            WithAccountPostRequestBodyDocumentsCompanyMinisterialDecree
                .createFromDiscriminatorValue);
    deserializerMap['company_registration_verification'] = (node) =>
        companyRegistrationVerification = node.getObjectValue<
                WithAccountPostRequestBodyDocumentsCompanyRegistrationVerification>(
            WithAccountPostRequestBodyDocumentsCompanyRegistrationVerification
                .createFromDiscriminatorValue);
    deserializerMap['company_tax_id_verification'] = (node) =>
        companyTaxIdVerification = node.getObjectValue<
                WithAccountPostRequestBodyDocumentsCompanyTaxIdVerification>(
            WithAccountPostRequestBodyDocumentsCompanyTaxIdVerification
                .createFromDiscriminatorValue);
    deserializerMap['proof_of_address'] = (node) => proofOfAddress =
        node.getObjectValue<WithAccountPostRequestBodyDocumentsProofOfAddress>(
            WithAccountPostRequestBodyDocumentsProofOfAddress
                .createFromDiscriminatorValue);
    deserializerMap['proof_of_registration'] = (node) => proofOfRegistration =
        node.getObjectValue<
                WithAccountPostRequestBodyDocumentsProofOfRegistration>(
            WithAccountPostRequestBodyDocumentsProofOfRegistration
                .createFromDiscriminatorValue);
    deserializerMap['proof_of_ultimate_beneficial_ownership'] = (node) =>
        proofOfUltimateBeneficialOwnership = node.getObjectValue<
                WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership>(
            WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsBankAccountOwnershipVerification>(
        'bank_account_ownership_verification',
        bankAccountOwnershipVerification);
    writer.writeObjectValue<WithAccountPostRequestBodyDocumentsCompanyLicense>(
        'company_license', companyLicense);
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsCompanyMemorandumOfAssociation>(
        'company_memorandum_of_association', companyMemorandumOfAssociation);
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsCompanyMinisterialDecree>(
        'company_ministerial_decree', companyMinisterialDecree);
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsCompanyRegistrationVerification>(
        'company_registration_verification', companyRegistrationVerification);
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsCompanyTaxIdVerification>(
        'company_tax_id_verification', companyTaxIdVerification);
    writer.writeObjectValue<WithAccountPostRequestBodyDocumentsProofOfAddress>(
        'proof_of_address', proofOfAddress);
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsProofOfRegistration>(
        'proof_of_registration', proofOfRegistration);
    writer.writeObjectValue<
            WithAccountPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership>(
        'proof_of_ultimate_beneficial_ownership',
        proofOfUltimateBeneficialOwnership);
    writer.writeAdditionalData(additionalData);
  }
}
