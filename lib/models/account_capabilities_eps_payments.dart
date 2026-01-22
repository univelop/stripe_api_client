// ignore_for_file: type=lint
/// auto generated
///  The status of the EPS payments capability of the account, or whether the account can directly process EPS charges.
enum AccountCapabilitiesEpsPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesEpsPayments(this.value);
  final String value;
}
