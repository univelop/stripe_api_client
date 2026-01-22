// ignore_for_file: type=lint
/// auto generated
///  Reason for the cancellation of this order.
enum OrderCancellationReason {
  expired('expired'),
  productUnavailable('product_unavailable'),
  requested('requested');

  const OrderCancellationReason(this.value);
  final String value;
}
