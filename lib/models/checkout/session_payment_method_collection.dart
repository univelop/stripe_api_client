// ignore_for_file: type=lint
/// auto generated
///  Configure whether a Checkout Session should collect a payment method. Defaults to `always`.
enum SessionPaymentMethodCollection {
  always('always'),
  ifRequired('if_required');

  const SessionPaymentMethodCollection(this.value);
  final String value;
}
