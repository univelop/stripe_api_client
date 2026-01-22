// ignore_for_file: type=lint
/// auto generated
///  The digital wallet for this token, if one was used.
enum TokenWalletProvider {
  applePay('apple_pay'),
  googlePay('google_pay'),
  samsungPay('samsung_pay');

  const TokenWalletProvider(this.value);
  final String value;
}
