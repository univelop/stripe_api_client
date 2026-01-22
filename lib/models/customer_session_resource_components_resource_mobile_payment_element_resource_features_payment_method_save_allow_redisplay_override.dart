// ignore_for_file: type=lint
/// auto generated
///  Allows overriding the value of allow_override when saving a new payment method when payment_method_save is set to disabled. Use values: "always", "limited", or "unspecified".If not specified, defaults to `nil` (no override value).
enum CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride {
  always('always'),
  limited('limited'),
  unspecified('unspecified');

  const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSaveAllowRedisplayOverride(
      this.value);
  final String value;
}
