// ignore_for_file: type=lint
/// auto generated
///  The status of the TWINT capability of the account, or whether the account can directly process TWINT charges.
enum AccountCapabilitiesTwintPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesTwintPayments(this.value);
  final String value;
}
