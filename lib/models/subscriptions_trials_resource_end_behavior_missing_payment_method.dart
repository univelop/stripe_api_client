// ignore_for_file: type=lint
/// auto generated
///  Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
enum SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod {
  cancel('cancel'),
  createInvoice('create_invoice'),
  pause('pause');

  const SubscriptionsTrialsResourceEndBehaviorMissingPaymentMethod(this.value);
  final String value;
}
