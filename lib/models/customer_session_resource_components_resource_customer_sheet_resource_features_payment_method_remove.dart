// ignore_for_file: type=lint
/// auto generated
///  Controls whether the customer sheet displays the option to remove a saved payment method."Allowing buyers to remove their saved payment methods impacts subscriptions that depend on that payment method. Removing the payment method detaches the [`customer` object](https://docs.stripe.com/api/payment_methods/object#payment_method_object-customer) from that [PaymentMethod](https://docs.stripe.com/api/payment_methods).
enum CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove {
  disabled('disabled'),
  enabled('enabled');

  const CustomerSessionResourceComponentsResourceCustomerSheetResourceFeaturesPaymentMethodRemove(
      this.value);
  final String value;
}
