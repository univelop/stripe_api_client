// ignore_for_file: type=lint
/// auto generated
///  Type of flow that the customer will go through.
enum PortalFlowsFlowType {
  paymentMethodUpdate('payment_method_update'),
  subscriptionCancel('subscription_cancel'),
  subscriptionUpdate('subscription_update'),
  subscriptionUpdateConfirm('subscription_update_confirm');

  const PortalFlowsFlowType(this.value);
  final String value;
}
