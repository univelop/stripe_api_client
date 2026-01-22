// ignore_for_file: type=lint
/// auto generated
///  Configure whether a Checkout Session creates a [Customer](https://docs.stripe.com/api/customers) during Session confirmation.When a Customer is not created, you can still retrieve email, address, and other customer data entered in Checkoutwith [customer_details](https://docs.stripe.com/api/checkout/sessions/object#checkout_session_object-customer_details).Sessions that don't create Customers instead are grouped by [guest customers](https://docs.stripe.com/payments/checkout/guest-customers)in the Dashboard. Promotion codes limited to first time customers will return invalid for these Sessions.Can only be set in `payment` and `setup` mode.
enum SessionsPostRequestBodyCustomerCreation {
  always('always'),
  ifRequired('if_required');

  const SessionsPostRequestBodyCustomerCreation(this.value);
  final String value;
}
