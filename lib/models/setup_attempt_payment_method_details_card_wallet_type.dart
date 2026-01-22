// ignore_for_file: type=lint
/// auto generated
///  The type of the card wallet, one of `apple_pay`, `google_pay`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
enum SetupAttemptPaymentMethodDetailsCardWalletType {
  applePay('apple_pay'),
  googlePay('google_pay'),
  link('link');

  const SetupAttemptPaymentMethodDetailsCardWalletType(this.value);
  final String value;
}
