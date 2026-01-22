// ignore_for_file: type=lint
/// auto generated
///  When transitioning phases, controls how prorations are handled (if any). Possible values are `create_prorations`, `none`, and `always_invoice`.
enum SubscriptionSchedulePhaseConfigurationProrationBehavior {
  alwaysInvoice('always_invoice'),
  createProrations('create_prorations'),
  none('none');

  const SubscriptionSchedulePhaseConfigurationProrationBehavior(this.value);
  final String value;
}
