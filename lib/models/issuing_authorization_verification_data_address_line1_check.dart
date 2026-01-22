// ignore_for_file: type=lint
/// auto generated
///  Whether the cardholder provided an address first line and if it matched the cardholder’s `billing.address.line1`.
enum IssuingAuthorizationVerificationDataAddressLine1Check {
  match('match'),
  mismatch('mismatch'),
  notProvided('not_provided');

  const IssuingAuthorizationVerificationDataAddressLine1Check(this.value);
  final String value;
}
