// ignore_for_file: type=lint
/// auto generated
///  The status of the PayTo capability of the account, or whether the account can directly process PayTo charges.
enum AccountCapabilitiesPaytoPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesPaytoPayments(this.value);
  final String value;
}
