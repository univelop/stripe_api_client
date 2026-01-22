// ignore_for_file: type=lint
/// auto generated
///  The status of the transaction.
enum TransactionStatus {
  pending('pending'),
  posted('posted'),
  void_('void');

  const TransactionStatus(this.value);
  final String value;
}
