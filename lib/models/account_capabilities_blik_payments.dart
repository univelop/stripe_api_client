// ignore_for_file: type=lint
/// auto generated
///  The status of the blik payments capability of the account, or whether the account can directly process blik charges.
enum AccountCapabilitiesBlikPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesBlikPayments(this.value);
  final String value;
}
