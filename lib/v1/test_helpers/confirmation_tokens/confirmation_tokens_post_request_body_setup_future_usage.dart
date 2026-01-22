// ignore_for_file: type=lint
/// auto generated
///  Indicates that you intend to make future payments with this ConfirmationToken's payment method.The presence of this property will [attach the payment method](https://docs.stripe.com/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete.
enum ConfirmationTokensPostRequestBodySetupFutureUsage {
  offSession('off_session'),
  onSession('on_session');

  const ConfirmationTokensPostRequestBodySetupFutureUsage(this.value);
  final String value;
}
