// ignore_for_file: type=lint
/// auto generated
///  The Stripe account type. Can be `standard`, `express`, `custom`, or `none`.
enum AccountType {
  custom('custom'),
  express('express'),
  none('none'),
  standard('standard');

  const AccountType(this.value);
  final String value;
}
