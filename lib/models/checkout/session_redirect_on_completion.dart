// ignore_for_file: type=lint
/// auto generated
///  This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://docs.stripe.com/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
enum SessionRedirectOnCompletion {
  always('always'),
  ifRequired('if_required'),
  never('never');

  const SessionRedirectOnCompletion(this.value);
  final String value;
}
