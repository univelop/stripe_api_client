// ignore_for_file: type=lint
/// auto generated
///  Either `now` or `unchanged`. Setting the value to `now` resets the subscription's billing cycle anchor to the current time (in UTC). For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
enum SubscriptionExposedPostRequestBodyBillingCycleAnchor {
  now('now'),
  unchanged('unchanged');

  const SubscriptionExposedPostRequestBodyBillingCycleAnchor(this.value);
  final String value;
}
