// ignore_for_file: type=lint
/// auto generated
///  Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's defaults will be used.When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
enum PaymentLinksResourcePaymentMethodReuseAgreementPosition {
  auto('auto'),
  hidden('hidden');

  const PaymentLinksResourcePaymentMethodReuseAgreementPosition(this.value);
  final String value;
}
