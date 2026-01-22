// ignore_for_file: type=lint
/// auto generated
///  The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, `visa_checkout`, or `link`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
enum PaymentMethodDetailsCardWalletType {
  amexExpressCheckout('amex_express_checkout'),
  applePay('apple_pay'),
  googlePay('google_pay'),
  link('link'),
  masterpass('masterpass'),
  samsungPay('samsung_pay'),
  visaCheckout('visa_checkout');

  const PaymentMethodDetailsCardWalletType(this.value);
  final String value;
}
