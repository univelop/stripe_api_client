// ignore_for_file: type=lint
/// auto generated
///  The current status of the authorization in its lifecycle.
enum AuthorizationStatus {
  closed('closed'),
  expired('expired'),
  pending('pending'),
  reversed('reversed');

  const AuthorizationStatus(this.value);
  final String value;
}
