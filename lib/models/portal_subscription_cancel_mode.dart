// ignore_for_file: type=lint
/// auto generated
///  Whether to cancel subscriptions immediately or at the end of the billing period.
enum PortalSubscriptionCancelMode {
  atPeriodEnd('at_period_end'),
  immediately('immediately');

  const PortalSubscriptionCancelMode(this.value);
  final String value;
}
