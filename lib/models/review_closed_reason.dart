// ignore_for_file: type=lint
/// auto generated
///  The reason the review was closed, or null if it has not yet been closed. One of `approved`, `refunded`, `refunded_as_fraud`, `disputed`, `redacted`, `canceled`, `payment_never_settled`, or `acknowledged`.
enum ReviewClosedReason {
  acknowledged('acknowledged'),
  approved('approved'),
  canceled('canceled'),
  disputed('disputed'),
  paymentNeverSettled('payment_never_settled'),
  redacted('redacted'),
  refunded('refunded'),
  refundedAsFraud('refunded_as_fraud');

  const ReviewClosedReason(this.value);
  final String value;
}
