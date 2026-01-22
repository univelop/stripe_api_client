// ignore_for_file: type=lint
/// auto generated
///  The status of the Klarna payments capability of the account, or whether the account can directly process Klarna charges.
enum AccountCapabilitiesKlarnaPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesKlarnaPayments(this.value);
  final String value;
}
