// ignore_for_file: type=lint
/// auto generated
///  The reason for filing the dispute. Its value will match the field containing the evidence.
enum IssuingDisputeEvidenceReason {
  canceled('canceled'),
  duplicate('duplicate'),
  fraudulent('fraudulent'),
  merchandiseNotAsDescribed('merchandise_not_as_described'),
  noValidAuthorization('no_valid_authorization'),
  notReceived('not_received'),
  other('other'),
  serviceNotAsDescribed('service_not_as_described');

  const IssuingDisputeEvidenceReason(this.value);
  final String value;
}
