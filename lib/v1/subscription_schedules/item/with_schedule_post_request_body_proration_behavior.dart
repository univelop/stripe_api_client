// ignore_for_file: type=lint
/// auto generated
///  If the update changes the billing configuration (item price, quantity, etc.) of the current phase, indicates how prorations from this change should be handled. The default value is `create_prorations`.
enum WithSchedulePostRequestBodyProrationBehavior {
  alwaysInvoice('always_invoice'),
  createProrations('create_prorations'),
  none('none');

  const WithSchedulePostRequestBodyProrationBehavior(this.value);
  final String value;
}
