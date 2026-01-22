// ignore_for_file: type=lint
/// auto generated
///  Whether the cardholder provided an expiry date and if it matched Stripe’s record.
enum IssuingAuthorizationVerificationDataExpiryCheck {
  match('match'),
  mismatch('mismatch'),
  notProvided('not_provided');

  const IssuingAuthorizationVerificationDataExpiryCheck(this.value);
  final String value;
}
