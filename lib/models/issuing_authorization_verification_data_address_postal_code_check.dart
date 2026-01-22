// ignore_for_file: type=lint
/// auto generated
///  Whether the cardholder provided a postal code and if it matched the cardholder’s `billing.address.postal_code`.
enum IssuingAuthorizationVerificationDataAddressPostalCodeCheck {
  match('match'),
  mismatch('mismatch'),
  notProvided('not_provided');

  const IssuingAuthorizationVerificationDataAddressPostalCodeCheck(this.value);
  final String value;
}
