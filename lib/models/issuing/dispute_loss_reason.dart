// ignore_for_file: type=lint
/// auto generated
///  The enum that describes the dispute loss outcome. If the dispute is not lost, this field will be absent. New enum values may be added in the future, so be sure to handle unknown values.
enum DisputeLossReason {
  cardholderAuthenticationIssuerLiability(
      'cardholder_authentication_issuer_liability'),
  eci5TokenTransactionWithTavv('eci5_token_transaction_with_tavv'),
  excessDisputesInTimeframe('excess_disputes_in_timeframe'),
  hasNotMetTheMinimumDisputeAmountRequirements(
      'has_not_met_the_minimum_dispute_amount_requirements'),
  invalidDuplicateDispute('invalid_duplicate_dispute'),
  invalidIncorrectAmountDispute('invalid_incorrect_amount_dispute'),
  invalidNoAuthorization('invalid_no_authorization'),
  invalidUseOfDisputes('invalid_use_of_disputes'),
  merchandiseDeliveredOrShipped('merchandise_delivered_or_shipped'),
  merchandiseOrServiceAsDescribed('merchandise_or_service_as_described'),
  notCancelled('not_cancelled'),
  other('other'),
  refundIssued('refund_issued'),
  submittedBeyondAllowableTimeLimit('submitted_beyond_allowable_time_limit'),
  transaction3dsRequired('transaction_3ds_required'),
  transactionApprovedAfterPriorFraudDispute(
      'transaction_approved_after_prior_fraud_dispute'),
  transactionAuthorized('transaction_authorized'),
  transactionElectronicallyRead('transaction_electronically_read'),
  transactionQualifiesForVisaEasyPaymentService(
      'transaction_qualifies_for_visa_easy_payment_service'),
  transactionUnattended('transaction_unattended');

  const DisputeLossReason(this.value);
  final String value;
}
