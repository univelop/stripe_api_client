// ignore_for_file: type=lint
/// auto generated
///  Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) resulting from the `billing_cycle_anchor`. If no value is passed, the default is `create_prorations`.
enum SubscriptionsPostRequestBodyProrationBehavior {
  alwaysInvoice('always_invoice'),
  createProrations('create_prorations'),
  none('none');

  const SubscriptionsPostRequestBodyProrationBehavior(this.value);
  final String value;
}
