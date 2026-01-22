// ignore_for_file: type=lint
/// auto generated
///  Additional information about why 3D Secure succeeded or failed basedon the `result`.
enum ThreeDSecureDetailsChargeResultReason {
  abandoned('abandoned'),
  bypassed('bypassed'),
  canceled('canceled'),
  cardNotEnrolled('card_not_enrolled'),
  networkNotSupported('network_not_supported'),
  protocolError('protocol_error'),
  rejected('rejected');

  const ThreeDSecureDetailsChargeResultReason(this.value);
  final String value;
}
