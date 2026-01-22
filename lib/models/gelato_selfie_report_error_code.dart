// ignore_for_file: type=lint
/// auto generated
///  A short machine-readable string giving the reason for the verification failure.
enum GelatoSelfieReportErrorCode {
  selfieDocumentMissingPhoto('selfie_document_missing_photo'),
  selfieFaceMismatch('selfie_face_mismatch'),
  selfieManipulated('selfie_manipulated'),
  selfieUnverifiedOther('selfie_unverified_other');

  const GelatoSelfieReportErrorCode(this.value);
  final String value;
}
