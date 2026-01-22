// ignore_for_file: type=lint
/// auto generated
///  Whether the cardholder provided a CVC and if it matched Stripe’s record.
enum IssuingAuthorizationVerificationDataCvcCheck {
  match('match'),
  mismatch('mismatch'),
  notProvided('not_provided');

  const IssuingAuthorizationVerificationDataCvcCheck(this.value);
  final String value;
}
