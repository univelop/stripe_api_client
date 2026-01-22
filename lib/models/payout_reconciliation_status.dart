// ignore_for_file: type=lint
/// auto generated
///  If `completed`, you can use the [Balance Transactions API](https://docs.stripe.com/api/balance_transactions/list#balance_transaction_list-payout) to list all balance transactions that are paid out in this payout.
enum PayoutReconciliationStatus {
  completed('completed'),
  inProgress('in_progress'),
  notApplicable('not_applicable');

  const PayoutReconciliationStatus(this.value);
  final String value;
}
