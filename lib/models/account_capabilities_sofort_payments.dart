// ignore_for_file: type=lint
/// auto generated
///  The status of the Sofort payments capability of the account, or whether the account can directly process Sofort charges.
enum AccountCapabilitiesSofortPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesSofortPayments(this.value);
  final String value;
}
