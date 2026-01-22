// ignore_for_file: type=lint
/// auto generated
///  The type of Stripe account to create. May be one of `custom`, `express` or `standard`.
enum AccountsPostRequestBodyType {
  custom('custom'),
  express('express'),
  standard('standard');

  const AccountsPostRequestBodyType(this.value);
  final String value;
}
