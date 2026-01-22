// ignore_for_file: type=lint
/// auto generated
///  The status of the mandate on the Bacs network. Can be one of `pending`, `revoked`, `refused`, or `accepted`.
enum MandateBacsDebitNetworkStatus {
  accepted('accepted'),
  pending('pending'),
  refused('refused'),
  revoked('revoked');

  const MandateBacsDebitNetworkStatus(this.value);
  final String value;
}
