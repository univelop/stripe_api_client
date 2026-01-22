// ignore_for_file: type=lint
/// auto generated
///  The present status of the subscription schedule. Possible values are `not_started`, `active`, `completed`, `released`, and `canceled`. You can read more about the different states in our [behavior guide](https://docs.stripe.com/billing/subscriptions/subscription-schedules).
enum SubscriptionScheduleStatus {
  active('active'),
  canceled('canceled'),
  completed('completed'),
  notStarted('not_started'),
  released('released');

  const SubscriptionScheduleStatus(this.value);
  final String value;
}
