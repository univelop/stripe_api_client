// ignore_for_file: type=lint
/// auto generated
///  The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.You can use this value to decide when to fulfill your customer's order.
enum SessionPaymentStatus {
  noPaymentRequired('no_payment_required'),
  paid('paid'),
  unpaid('unpaid');

  const SessionPaymentStatus(this.value);
  final String value;
}
