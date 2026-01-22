// ignore_for_file: type=lint
/// auto generated
///  The type of refund. This can be `refund`, `reversal`, or `pending`.
enum RefundDestinationDetailsCardType {
  pending('pending'),
  refund('refund'),
  reversal('reversal');

  const RefundDestinationDetailsCardType(this.value);
  final String value;
}
