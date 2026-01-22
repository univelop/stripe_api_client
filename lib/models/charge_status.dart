// ignore_for_file: type=lint
/// auto generated
///  The status of the payment is either `succeeded`, `pending`, or `failed`.
enum ChargeStatus {
  failed('failed'),
  pending('pending'),
  succeeded('succeeded');

  const ChargeStatus(this.value);
  final String value;
}
