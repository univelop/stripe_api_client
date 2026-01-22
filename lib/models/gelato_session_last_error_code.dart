// ignore_for_file: type=lint
/// auto generated
///  A short machine-readable string giving the reason for the verification or user-session failure.
enum GelatoSessionLastErrorCode {
  abandoned('abandoned'),
  consentDeclined('consent_declined'),
  countryNotSupported('country_not_supported'),
  deviceNotSupported('device_not_supported'),
  documentExpired('document_expired'),
  documentTypeNotSupported('document_type_not_supported'),
  documentUnverifiedOther('document_unverified_other'),
  emailUnverifiedOther('email_unverified_other'),
  emailVerificationDeclined('email_verification_declined'),
  idNumberInsufficientDocumentData('id_number_insufficient_document_data'),
  idNumberMismatch('id_number_mismatch'),
  idNumberUnverifiedOther('id_number_unverified_other'),
  phoneUnverifiedOther('phone_unverified_other'),
  phoneVerificationDeclined('phone_verification_declined'),
  selfieDocumentMissingPhoto('selfie_document_missing_photo'),
  selfieFaceMismatch('selfie_face_mismatch'),
  selfieManipulated('selfie_manipulated'),
  selfieUnverifiedOther('selfie_unverified_other'),
  underSupportedAge('under_supported_age');

  const GelatoSessionLastErrorCode(this.value);
  final String value;
}
