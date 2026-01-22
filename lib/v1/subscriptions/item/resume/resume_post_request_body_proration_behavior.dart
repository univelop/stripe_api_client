// ignore_for_file: type=lint
/// auto generated
///  Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) resulting from the `billing_cycle_anchor` being `unchanged`. When the `billing_cycle_anchor` is set to `now` (default value), no prorations are generated. If no value is passed, the default is `create_prorations`.
enum ResumePostRequestBodyProrationBehavior {
  alwaysInvoice('always_invoice'),
  createProrations('create_prorations'),
  none('none');

  const ResumePostRequestBodyProrationBehavior(this.value);
  final String value;
}
