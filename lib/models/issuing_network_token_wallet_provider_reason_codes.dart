// ignore_for_file: type=lint
/// auto generated
enum IssuingNetworkTokenWalletProviderReasonCodes {
  accountCardTooNew('account_card_too_new'),
  accountRecentlyChanged('account_recently_changed'),
  accountTooNew('account_too_new'),
  accountTooNewSinceLaunch('account_too_new_since_launch'),
  additionalDevice('additional_device'),
  dataExpired('data_expired'),
  deferIdVDecision('defer_id_v_decision'),
  deviceRecentlyLost('device_recently_lost'),
  goodActivityHistory('good_activity_history'),
  hasSuspendedTokens('has_suspended_tokens'),
  highRisk('high_risk'),
  inactiveAccount('inactive_account'),
  longAccountTenure('long_account_tenure'),
  lowAccountScore('low_account_score'),
  lowDeviceScore('low_device_score'),
  lowPhoneNumberScore('low_phone_number_score'),
  networkServiceError('network_service_error'),
  outsideHomeTerritory('outside_home_territory'),
  provisioningCardholderMismatch('provisioning_cardholder_mismatch'),
  provisioningDeviceAndCardholderMismatch(
      'provisioning_device_and_cardholder_mismatch'),
  provisioningDeviceMismatch('provisioning_device_mismatch'),
  sameDeviceNoPriorAuthentication('same_device_no_prior_authentication'),
  sameDeviceSuccessfulPriorAuthentication(
      'same_device_successful_prior_authentication'),
  softwareUpdate('software_update'),
  suspiciousActivity('suspicious_activity'),
  tooManyDifferentCardholders('too_many_different_cardholders'),
  tooManyRecentAttempts('too_many_recent_attempts'),
  tooManyRecentTokens('too_many_recent_tokens');

  const IssuingNetworkTokenWalletProviderReasonCodes(this.value);
  final String value;
}
