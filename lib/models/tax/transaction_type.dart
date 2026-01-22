// ignore_for_file: type=lint
/// auto generated
///  If `reversal`, this transaction reverses an earlier transaction.
enum TransactionType {
  reversal('reversal'),
  transaction('transaction');

  const TransactionType(this.value);
  final String value;
}
