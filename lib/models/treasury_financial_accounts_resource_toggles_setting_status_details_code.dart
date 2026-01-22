// ignore_for_file: type=lint
/// auto generated
///  Represents the reason why the status is `pending` or `restricted`.
enum TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsCode {
  activating('activating'),
  capabilityNotRequested('capability_not_requested'),
  financialAccountClosed('financial_account_closed'),
  rejectedOther('rejected_other'),
  rejectedUnsupportedBusiness('rejected_unsupported_business'),
  requirementsPastDue('requirements_past_due'),
  requirementsPendingVerification('requirements_pending_verification'),
  restrictedByPlatform('restricted_by_platform'),
  restrictedOther('restricted_other');

  const TreasuryFinancialAccountsResourceTogglesSettingStatusDetailsCode(
      this.value);
  final String value;
}
