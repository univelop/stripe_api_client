// ignore_for_file: type=lint
/// auto generated
///  Configure whether Stripe updates `subscription.default_payment_method` when payment succeeds. Defaults to `off`.
enum SubscriptionsResourcePaymentSettingsSaveDefaultPaymentMethod {
  off('off'),
  onSubscription('on_subscription');

  const SubscriptionsResourcePaymentSettingsSaveDefaultPaymentMethod(
      this.value);
  final String value;
}
