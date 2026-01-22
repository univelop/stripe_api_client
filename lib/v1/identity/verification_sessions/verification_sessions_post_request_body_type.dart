// ignore_for_file: type=lint
/// auto generated
///  The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed. You must provide a `type` if not passing `verification_flow`.
enum VerificationSessionsPostRequestBodyType {
  document('document'),
  idNumber('id_number');

  const VerificationSessionsPostRequestBodyType(this.value);
  final String value;
}
