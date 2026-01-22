// ignore_for_file: type=lint
/// auto generated
///  The status of the Satispay capability of the account, or whether the account can directly process Satispay payments.
enum AccountCapabilitiesSatispayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesSatispayPayments(this.value);
  final String value;
}
