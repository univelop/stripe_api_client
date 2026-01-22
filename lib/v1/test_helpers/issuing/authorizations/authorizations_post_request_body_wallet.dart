// ignore_for_file: type=lint
/// auto generated
///  The digital wallet used for this transaction. One of `apple_pay`, `google_pay`, or `samsung_pay`. Will populate as `null` when no digital wallet was utilized.
enum AuthorizationsPostRequestBodyWallet {
  applePay('apple_pay'),
  googlePay('google_pay'),
  samsungPay('samsung_pay');

  const AuthorizationsPostRequestBodyWallet(this.value);
  final String value;
}
