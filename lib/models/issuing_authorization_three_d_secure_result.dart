// ignore_for_file: type=lint
/// auto generated
///  The outcome of the 3D Secure authentication request.
enum IssuingAuthorizationThreeDSecureResult {
  attemptAcknowledged('attempt_acknowledged'),
  authenticated('authenticated'),
  failed('failed'),
  required_('required');

  const IssuingAuthorizationThreeDSecureResult(this.value);
  final String value;
}
