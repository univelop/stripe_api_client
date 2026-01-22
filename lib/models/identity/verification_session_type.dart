// ignore_for_file: type=lint
/// auto generated
///  The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed.
enum VerificationSessionType {
  document('document'),
  idNumber('id_number'),
  verificationFlow('verification_flow');

  const VerificationSessionType(this.value);
  final String value;
}
