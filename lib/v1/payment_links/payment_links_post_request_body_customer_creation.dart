// ignore_for_file: type=lint
/// auto generated
///  Configures whether [checkout sessions](https://docs.stripe.com/api/checkout/sessions) created by this payment link create a [Customer](https://docs.stripe.com/api/customers).
enum PaymentLinksPostRequestBodyCustomerCreation {
  always('always'),
  ifRequired('if_required');

  const PaymentLinksPostRequestBodyCustomerCreation(this.value);
  final String value;
}
