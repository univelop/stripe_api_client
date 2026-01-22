// ignore_for_file: type=lint
/// auto generated
///  The type of the cash balance transaction. New types may be added in future. See [Customer Balance](https://docs.stripe.com/payments/customer-balance#types) to learn more about these types.
enum CustomerCashBalanceTransactionType {
  adjustedForOverdraft('adjusted_for_overdraft'),
  appliedToPayment('applied_to_payment'),
  funded('funded'),
  fundingReversed('funding_reversed'),
  refundedFromPayment('refunded_from_payment'),
  returnCanceled('return_canceled'),
  returnInitiated('return_initiated'),
  transferredToBalance('transferred_to_balance'),
  unappliedFromPayment('unapplied_from_payment');

  const CustomerCashBalanceTransactionType(this.value);
  final String value;
}
