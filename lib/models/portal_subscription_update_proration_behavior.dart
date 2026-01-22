// ignore_for_file: type=lint
/// auto generated
///  Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`. Defaults to a value of `none` if you don't set it during creation.
enum PortalSubscriptionUpdateProrationBehavior {
  alwaysInvoice('always_invoice'),
  createProrations('create_prorations'),
  none('none');

  const PortalSubscriptionUpdateProrationBehavior(this.value);
  final String value;
}
