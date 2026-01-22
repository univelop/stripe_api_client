// ignore_for_file: type=lint
/// auto generated
///  Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
enum SessionCustomerCreation {
  always('always'),
  ifRequired('if_required');

  const SessionCustomerCreation(this.value);
  final String value;
}
