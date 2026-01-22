// ignore_for_file: type=lint
/// auto generated
///  The billing cycle anchor that applies when the subscription is resumed. Either `now` or `unchanged`. The default is `now`. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
enum ResumePostRequestBodyBillingCycleAnchor {
  now('now'),
  unchanged('unchanged');

  const ResumePostRequestBodyBillingCycleAnchor(this.value);
  final String value;
}
