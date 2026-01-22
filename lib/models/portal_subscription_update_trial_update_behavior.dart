// ignore_for_file: type=lint
/// auto generated
///  Determines how handle updates to trialing subscriptions. Valid values are `end_trial` and `continue_trial`. Defaults to a value of `end_trial` if you don't set it during creation.
enum PortalSubscriptionUpdateTrialUpdateBehavior {
  continueTrial('continue_trial'),
  endTrial('end_trial');

  const PortalSubscriptionUpdateTrialUpdateBehavior(this.value);
  final String value;
}
