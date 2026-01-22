// ignore_for_file: type=lint
/// auto generated
///  The status of the MB WAY payments capability of the account, or whether the account can directly process MB WAY charges.
enum AccountCapabilitiesMbWayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesMbWayPayments(this.value);
  final String value;
}
