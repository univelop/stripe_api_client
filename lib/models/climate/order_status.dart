// ignore_for_file: type=lint
/// auto generated
///  The current status of this order.
enum OrderStatus {
  awaitingFunds('awaiting_funds'),
  canceled('canceled'),
  confirmed('confirmed'),
  delivered('delivered'),
  open('open');

  const OrderStatus(this.value);
  final String value;
}
