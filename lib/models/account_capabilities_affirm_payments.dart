// ignore_for_file: type=lint
/// auto generated
///  The status of the Affirm capability of the account, or whether the account can directly process Affirm charges.
enum AccountCapabilitiesAffirmPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesAffirmPayments(this.value);
  final String value;
}
