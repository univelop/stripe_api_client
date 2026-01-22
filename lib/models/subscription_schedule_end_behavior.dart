// ignore_for_file: type=lint
/// auto generated
///  Behavior of the subscription schedule and underlying subscription when it ends. Possible values are `release` or `cancel` with the default being `release`. `release` will end the subscription schedule and keep the underlying subscription running. `cancel` will end the subscription schedule and cancel the underlying subscription.
enum SubscriptionScheduleEndBehavior {
  cancel('cancel'),
  none('none'),
  release('release'),
  renew('renew');

  const SubscriptionScheduleEndBehavior(this.value);
  final String value;
}
