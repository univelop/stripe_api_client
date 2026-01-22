// ignore_for_file: type=lint
/// auto generated
///  Specifies whether to permit authorizations on this cardholder's cards. Defaults to `active`.
enum CardholdersPostRequestBodyStatus {
  active('active'),
  inactive('inactive');

  const CardholdersPostRequestBodyStatus(this.value);
  final String value;
}
