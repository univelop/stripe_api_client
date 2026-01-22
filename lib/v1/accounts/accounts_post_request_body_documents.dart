// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accounts_post_request_body_documents_bank_account_ownership_verification.dart';
import './accounts_post_request_body_documents_company_license.dart';
import './accounts_post_request_body_documents_company_memorandum_of_association.dart';
import './accounts_post_request_body_documents_company_ministerial_decree.dart';
import './accounts_post_request_body_documents_company_registration_verification.dart';
import './accounts_post_request_body_documents_company_tax_id_verification.dart';
import './accounts_post_request_body_documents_proof_of_address.dart';
import './accounts_post_request_body_documents_proof_of_registration.dart';
import './accounts_post_request_body_documents_proof_of_ultimate_beneficial_ownership.dart';

/// auto generated
/// Documents that may be submitted to satisfy various informational requests.
class AccountsPostRequestBodyDocuments
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_account_ownership_verification property
  AccountsPostRequestBodyDocumentsBankAccountOwnershipVerification?
      bankAccountOwnershipVerification;

  ///  The company_license property
  AccountsPostRequestBodyDocumentsCompanyLicense? companyLicense;

  ///  The company_memorandum_of_association property
  AccountsPostRequestBodyDocumentsCompanyMemorandumOfAssociation?
      companyMemorandumOfAssociation;

  ///  The company_ministerial_decree property
  AccountsPostRequestBodyDocumentsCompanyMinisterialDecree?
      companyMinisterialDecree;

  ///  The company_registration_verification property
  AccountsPostRequestBodyDocumentsCompanyRegistrationVerification?
      companyRegistrationVerification;

  ///  The company_tax_id_verification property
  AccountsPostRequestBodyDocumentsCompanyTaxIdVerification?
      companyTaxIdVerification;

  ///  The proof_of_address property
  AccountsPostRequestBodyDocumentsProofOfAddress? proofOfAddress;

  ///  The proof_of_registration property
  AccountsPostRequestBodyDocumentsProofOfRegistration? proofOfRegistration;

  ///  The proof_of_ultimate_beneficial_ownership property
  AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership?
      proofOfUltimateBeneficialOwnership;

  /// Instantiates a new [AccountsPostRequestBodyDocuments] and sets the default values.
  AccountsPostRequestBodyDocuments() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AccountsPostRequestBodyDocuments createFromDiscriminatorValue(
      ParseNode parseNode) {
    return AccountsPostRequestBodyDocuments();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_account_ownership_verification'] = (node) =>
        bankAccountOwnershipVerification = node.getObjectValue<
                AccountsPostRequestBodyDocumentsBankAccountOwnershipVerification>(
            AccountsPostRequestBodyDocumentsBankAccountOwnershipVerification
                .createFromDiscriminatorValue);
    deserializerMap['company_license'] = (node) => companyLicense =
        node.getObjectValue<AccountsPostRequestBodyDocumentsCompanyLicense>(
            AccountsPostRequestBodyDocumentsCompanyLicense
                .createFromDiscriminatorValue);
    deserializerMap['company_memorandum_of_association'] = (node) =>
        companyMemorandumOfAssociation = node.getObjectValue<
                AccountsPostRequestBodyDocumentsCompanyMemorandumOfAssociation>(
            AccountsPostRequestBodyDocumentsCompanyMemorandumOfAssociation
                .createFromDiscriminatorValue);
    deserializerMap['company_ministerial_decree'] = (node) =>
        companyMinisterialDecree = node.getObjectValue<
                AccountsPostRequestBodyDocumentsCompanyMinisterialDecree>(
            AccountsPostRequestBodyDocumentsCompanyMinisterialDecree
                .createFromDiscriminatorValue);
    deserializerMap['company_registration_verification'] = (node) =>
        companyRegistrationVerification = node.getObjectValue<
                AccountsPostRequestBodyDocumentsCompanyRegistrationVerification>(
            AccountsPostRequestBodyDocumentsCompanyRegistrationVerification
                .createFromDiscriminatorValue);
    deserializerMap['company_tax_id_verification'] = (node) =>
        companyTaxIdVerification = node.getObjectValue<
                AccountsPostRequestBodyDocumentsCompanyTaxIdVerification>(
            AccountsPostRequestBodyDocumentsCompanyTaxIdVerification
                .createFromDiscriminatorValue);
    deserializerMap['proof_of_address'] = (node) => proofOfAddress =
        node.getObjectValue<AccountsPostRequestBodyDocumentsProofOfAddress>(
            AccountsPostRequestBodyDocumentsProofOfAddress
                .createFromDiscriminatorValue);
    deserializerMap['proof_of_registration'] = (node) => proofOfRegistration =
        node.getObjectValue<
                AccountsPostRequestBodyDocumentsProofOfRegistration>(
            AccountsPostRequestBodyDocumentsProofOfRegistration
                .createFromDiscriminatorValue);
    deserializerMap['proof_of_ultimate_beneficial_ownership'] = (node) =>
        proofOfUltimateBeneficialOwnership = node.getObjectValue<
                AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership>(
            AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsBankAccountOwnershipVerification>(
        'bank_account_ownership_verification',
        bankAccountOwnershipVerification);
    writer.writeObjectValue<AccountsPostRequestBodyDocumentsCompanyLicense>(
        'company_license', companyLicense);
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsCompanyMemorandumOfAssociation>(
        'company_memorandum_of_association', companyMemorandumOfAssociation);
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsCompanyMinisterialDecree>(
        'company_ministerial_decree', companyMinisterialDecree);
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsCompanyRegistrationVerification>(
        'company_registration_verification', companyRegistrationVerification);
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsCompanyTaxIdVerification>(
        'company_tax_id_verification', companyTaxIdVerification);
    writer.writeObjectValue<AccountsPostRequestBodyDocumentsProofOfAddress>(
        'proof_of_address', proofOfAddress);
    writer
        .writeObjectValue<AccountsPostRequestBodyDocumentsProofOfRegistration>(
            'proof_of_registration', proofOfRegistration);
    writer.writeObjectValue<
            AccountsPostRequestBodyDocumentsProofOfUltimateBeneficialOwnership>(
        'proof_of_ultimate_beneficial_ownership',
        proofOfUltimateBeneficialOwnership);
    writer.writeAdditionalData(additionalData);
  }
}
