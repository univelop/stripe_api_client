// ignore_for_file: type=lint
/// auto generated
///  If the account is disabled, this enum describes why. [Learn more about handling verification issues](https://docs.stripe.com/connect/handling-api-verification).
enum AccountRequirementsDisabledReason {
  actionRequiredrequestedCapabilities('action_required.requested_capabilities'),
  listed('listed'),
  other('other'),
  platformPaused('platform_paused'),
  rejectedFraud('rejected.fraud'),
  rejectedincompleteVerification('rejected.incomplete_verification'),
  rejectedListed('rejected.listed'),
  rejectedOther('rejected.other'),
  rejectedplatformFraud('rejected.platform_fraud'),
  rejectedplatformOther('rejected.platform_other'),
  rejectedplatformTermsOfService('rejected.platform_terms_of_service'),
  rejectedtermsOfService('rejected.terms_of_service'),
  requirementspastDue('requirements.past_due'),
  requirementspendingVerification('requirements.pending_verification'),
  underReview('under_review');

  const AccountRequirementsDisabledReason(this.value);
  final String value;
}
