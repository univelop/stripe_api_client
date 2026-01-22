// ignore_for_file: type=lint
/// auto generated
///  The [purpose](https://docs.stripe.com/file-upload#uploading-a-file) of the uploaded file.
enum FilePurpose {
  accountRequirement('account_requirement'),
  additionalVerification('additional_verification'),
  businessIcon('business_icon'),
  businessLogo('business_logo'),
  customerSignature('customer_signature'),
  disputeEvidence('dispute_evidence'),
  documentProviderIdentityDocument('document_provider_identity_document'),
  financeReportRun('finance_report_run'),
  financialAccountStatement('financial_account_statement'),
  identityDocument('identity_document'),
  identityDocumentDownloadable('identity_document_downloadable'),
  issuingRegulatoryReporting('issuing_regulatory_reporting'),
  pciDocument('pci_document'),
  platformTermsOfService('platform_terms_of_service'),
  selfie('selfie'),
  sigmaScheduledQuery('sigma_scheduled_query'),
  taxDocumentUserUpload('tax_document_user_upload'),
  terminalAndroidApk('terminal_android_apk'),
  terminalReaderSplashscreen('terminal_reader_splashscreen');

  const FilePurpose(this.value);
  final String value;
}
