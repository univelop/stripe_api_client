// ignore_for_file: type=lint
/// auto generated
///  When an authorization is approved or declined by you or by Stripe, this field provides additional detail on the reason for the outcome.
enum IssuingAuthorizationRequestReason {
  accountDisabled('account_disabled'),
  cardActive('card_active'),
  cardCanceled('card_canceled'),
  cardExpired('card_expired'),
  cardInactive('card_inactive'),
  cardholderBlocked('cardholder_blocked'),
  cardholderInactive('cardholder_inactive'),
  cardholderVerificationRequired('cardholder_verification_required'),
  insecureAuthorizationMethod('insecure_authorization_method'),
  insufficientFunds('insufficient_funds'),
  networkFallback('network_fallback'),
  notAllowed('not_allowed'),
  pinBlocked('pin_blocked'),
  spendingControls('spending_controls'),
  suspectedFraud('suspected_fraud'),
  verificationFailed('verification_failed'),
  webhookApproved('webhook_approved'),
  webhookDeclined('webhook_declined'),
  webhookError('webhook_error'),
  webhookTimeout('webhook_timeout');

  const IssuingAuthorizationRequestReason(this.value);
  final String value;
}
