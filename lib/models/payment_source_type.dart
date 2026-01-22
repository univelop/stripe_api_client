// ignore_for_file: type=lint
/// auto generated
///  The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
enum PaymentSourceType {
  custom('custom'),
  express('express'),
  none('none'),
  standard('standard');

  const PaymentSourceType(this.value);
  final String value;
}
