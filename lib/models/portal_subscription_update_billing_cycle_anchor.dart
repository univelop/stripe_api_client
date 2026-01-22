// ignore_for_file: type=lint
/// auto generated
///  Determines the value to use for the billing cycle anchor on subscription updates. Valid values are `now` or `unchanged`, and the default value is `unchanged`. Setting the value to `now` resets the subscription's billing cycle anchor to the current time (in UTC). For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
enum PortalSubscriptionUpdateBillingCycleAnchor {
  now('now'),
  unchanged('unchanged');

  const PortalSubscriptionUpdateBillingCycleAnchor(this.value);
  final String value;
}
