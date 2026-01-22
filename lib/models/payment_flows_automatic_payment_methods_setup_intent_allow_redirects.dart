// ignore_for_file: type=lint
/// auto generated
///  Controls whether this SetupIntent will accept redirect-based payment methods.Redirect-based payment methods may require your customer to be redirected to a payment method's app or site for authentication or additional steps. To [confirm](https://docs.stripe.com/api/setup_intents/confirm) this SetupIntent, you may be required to provide a `return_url` to redirect customers back to your site after they authenticate or complete the setup.
enum PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects {
  always('always'),
  never('never');

  const PaymentFlowsAutomaticPaymentMethodsSetupIntentAllowRedirects(
      this.value);
  final String value;
}
