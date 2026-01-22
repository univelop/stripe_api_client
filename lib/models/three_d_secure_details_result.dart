// ignore_for_file: type=lint
/// auto generated
///  Indicates the outcome of 3D Secure authentication.
enum ThreeDSecureDetailsResult {
  attemptAcknowledged('attempt_acknowledged'),
  authenticated('authenticated'),
  exempted('exempted'),
  failed('failed'),
  notSupported('not_supported'),
  processingError('processing_error');

  const ThreeDSecureDetailsResult(this.value);
  final String value;
}
