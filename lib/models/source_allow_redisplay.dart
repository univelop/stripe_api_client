// ignore_for_file: type=lint
/// auto generated
///  This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
enum SourceAllowRedisplay {
  always('always'),
  limited('limited'),
  unspecified('unspecified');

  const SourceAllowRedisplay(this.value);
  final String value;
}
