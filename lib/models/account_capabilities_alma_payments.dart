// ignore_for_file: type=lint
/// auto generated
///  The status of the Alma capability of the account, or whether the account can directly process Alma payments.
enum AccountCapabilitiesAlmaPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesAlmaPayments(this.value);
  final String value;
}
