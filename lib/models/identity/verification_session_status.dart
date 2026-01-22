// ignore_for_file: type=lint
/// auto generated
///  Status of this VerificationSession. [Learn more about the lifecycle of sessions](https://docs.stripe.com/identity/how-sessions-work).
enum VerificationSessionStatus {
  canceled('canceled'),
  processing('processing'),
  requiresInput('requires_input'),
  verified('verified');

  const VerificationSessionStatus(this.value);
  final String value;
}
