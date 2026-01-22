// ignore_for_file: type=lint
/// auto generated
///  Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
enum WithItemPostRequestBodyProrationBehavior {
  alwaysInvoice('always_invoice'),
  createProrations('create_prorations'),
  none('none');

  const WithItemPostRequestBodyProrationBehavior(this.value);
  final String value;
}
