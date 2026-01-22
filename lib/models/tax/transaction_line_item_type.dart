// ignore_for_file: type=lint
/// auto generated
///  If `reversal`, this line item reverses an earlier transaction.
enum TransactionLineItemType {
  reversal('reversal'),
  transaction('transaction');

  const TransactionLineItemType(this.value);
  final String value;
}
