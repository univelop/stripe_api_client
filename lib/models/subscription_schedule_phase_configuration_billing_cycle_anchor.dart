// ignore_for_file: type=lint
/// auto generated
///  Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://docs.stripe.com/billing/subscriptions/billing-cycle).
enum SubscriptionSchedulePhaseConfigurationBillingCycleAnchor {
  automatic('automatic'),
  phaseStart('phase_start');

  const SubscriptionSchedulePhaseConfigurationBillingCycleAnchor(this.value);
  final String value;
}
