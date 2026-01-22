// ignore_for_file: type=lint
/// auto generated
///  Verification status, one of `pending`, `verified`, `unverified`, or `unavailable`.
enum TaxIdVerificationStatus {
  pending('pending'),
  unavailable('unavailable'),
  unverified('unverified'),
  verified('verified');

  const TaxIdVerificationStatus(this.value);
  final String value;
}
