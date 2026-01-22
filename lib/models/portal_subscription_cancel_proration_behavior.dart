// ignore_for_file: type=lint
/// auto generated
///  Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`.
enum PortalSubscriptionCancelProrationBehavior {
  alwaysInvoice('always_invoice'),
  createProrations('create_prorations'),
  none('none');

  const PortalSubscriptionCancelProrationBehavior(this.value);
  final String value;
}
