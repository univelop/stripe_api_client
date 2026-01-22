// ignore_for_file: type=lint
/// auto generated
///  The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`.
enum TransactionWallet {
  applePay('apple_pay'),
  googlePay('google_pay'),
  samsungPay('samsung_pay');

  const TransactionWallet(this.value);
  final String value;
}
