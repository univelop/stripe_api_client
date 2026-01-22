// ignore_for_file: type=lint
/// auto generated
///  Transaction type: `adjustment`, `applied_to_invoice`, `credit_note`, `initial`, `invoice_overpaid`, `invoice_too_large`, `invoice_too_small`, `unspent_receiver_credit`, `unapplied_from_invoice`, `checkout_session_subscription_payment`, or `checkout_session_subscription_payment_canceled`. See the [Customer Balance page](https://docs.stripe.com/billing/customer/balance#types) to learn more about transaction types.
enum CustomerBalanceTransactionType {
  adjustment('adjustment'),
  appliedToInvoice('applied_to_invoice'),
  checkoutSessionSubscriptionPayment('checkout_session_subscription_payment'),
  checkoutSessionSubscriptionPaymentCanceled(
      'checkout_session_subscription_payment_canceled'),
  creditNote('credit_note'),
  initial('initial'),
  invoiceOverpaid('invoice_overpaid'),
  invoiceTooLarge('invoice_too_large'),
  invoiceTooSmall('invoice_too_small'),
  migration('migration'),
  unappliedFromInvoice('unapplied_from_invoice'),
  unspentReceiverCredit('unspent_receiver_credit');

  const CustomerBalanceTransactionType(this.value);
  final String value;
}
