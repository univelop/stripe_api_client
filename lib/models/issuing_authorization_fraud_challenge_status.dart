// ignore_for_file: type=lint
/// auto generated
///  The status of the fraud challenge.
enum IssuingAuthorizationFraudChallengeStatus {
  expired('expired'),
  pending('pending'),
  rejected('rejected'),
  undeliverable('undeliverable'),
  verified('verified');

  const IssuingAuthorizationFraudChallengeStatus(this.value);
  final String value;
}
