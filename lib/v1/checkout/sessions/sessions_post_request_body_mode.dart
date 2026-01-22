// ignore_for_file: type=lint
/// auto generated
///  The mode of the Checkout Session. Pass `subscription` if the Checkout Session includes at least one recurring item.
enum SessionsPostRequestBodyMode {
  payment('payment'),
  setup('setup'),
  subscription('subscription');

  const SessionsPostRequestBodyMode(this.value);
  final String value;
}
