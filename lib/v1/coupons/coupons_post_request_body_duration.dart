// ignore_for_file: type=lint
/// auto generated
///  Specifies how long the discount will be in effect if used on a subscription. Defaults to `once`.
enum CouponsPostRequestBodyDuration {
  forever('forever'),
  once('once'),
  repeating('repeating');

  const CouponsPostRequestBodyDuration(this.value);
  final String value;
}
