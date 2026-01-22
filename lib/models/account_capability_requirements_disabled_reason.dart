// ignore_for_file: type=lint
/// auto generated
///  Description of why the capability is disabled. [Learn more about handling verification issues](https://docs.stripe.com/connect/handling-api-verification).
enum AccountCapabilityRequirementsDisabledReason {
  other('other'),
  pausedInactivity('paused.inactivity'),
  pendingOnboarding('pending.onboarding'),
  pendingReview('pending.review'),
  platformDisabled('platform_disabled'),
  platformPaused('platform_paused'),
  rejectedInactivity('rejected.inactivity'),
  rejectedOther('rejected.other'),
  rejectedunsupportedBusiness('rejected.unsupported_business'),
  requirementsfieldsNeeded('requirements.fields_needed');

  const AccountCapabilityRequirementsDisabledReason(this.value);
  final String value;
}
