// ignore_for_file: type=lint
/// auto generated
///  The method used to send this payout, which is `standard` or `instant`. We support `instant` for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
enum PayoutsPostRequestBodyMethod {
  instant('instant'),
  standard('standard');

  const PayoutsPostRequestBodyMethod(this.value);
  final String value;
}
