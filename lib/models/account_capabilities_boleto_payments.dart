// ignore_for_file: type=lint
/// auto generated
///  The status of the boleto payments capability of the account, or whether the account can directly process boleto charges.
enum AccountCapabilitiesBoletoPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesBoletoPayments(this.value);
  final String value;
}
