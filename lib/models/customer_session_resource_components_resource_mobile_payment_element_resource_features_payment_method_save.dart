// ignore_for_file: type=lint
/// auto generated
///  Controls whether the mobile payment element displays a checkbox offering to save a new payment method.If a customer checks the box, the [`allow_redisplay`](https://docs.stripe.com/api/payment_methods/object#payment_method_object-allow_redisplay) value on the PaymentMethod is set to `'always'` at confirmation time. For PaymentIntents, the [`setup_future_usage`](https://docs.stripe.com/api/payment_intents/object#payment_intent_object-setup_future_usage) value is also set to the value defined in `payment_method_save_usage`.
enum CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave {
  disabled('disabled'),
  enabled('enabled');

  const CustomerSessionResourceComponentsResourceMobilePaymentElementResourceFeaturesPaymentMethodSave(
      this.value);
  final String value;
}
