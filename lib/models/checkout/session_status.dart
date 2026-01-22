// ignore_for_file: type=lint
/// auto generated
///  The status of the Checkout Session, one of `open`, `complete`, or `expired`.
enum SessionStatus {
  complete('complete'),
  expired('expired'),
  open('open');

  const SessionStatus(this.value);
  final String value;
}
