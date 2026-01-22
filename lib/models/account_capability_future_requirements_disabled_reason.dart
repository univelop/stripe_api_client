// ignore_for_file: type=lint
/// auto generated
///  This is typed as an enum for consistency with `requirements.disabled_reason`, but it safe to assume `future_requirements.disabled_reason` is null because fields in `future_requirements` will never disable the account.
enum AccountCapabilityFutureRequirementsDisabledReason {
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

  const AccountCapabilityFutureRequirementsDisabledReason(this.value);
  final String value;
}
