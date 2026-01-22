// ignore_for_file: type=lint
/// auto generated
///  One of `forever`, `once`, or `repeating`. Describes how long a customer who applies this coupon will get the discount.
enum CouponDuration {
  forever('forever'),
  once('once'),
  repeating('repeating');

  const CouponDuration(this.value);
  final String value;
}
