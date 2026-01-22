// ignore_for_file: type=lint
/// auto generated
///  The status of the Canadian pre-authorized debits payments capability of the account, or whether the account can directly process Canadian pre-authorized debits charges.
enum AccountCapabilitiesAcssDebitPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesAcssDebitPayments(this.value);
  final String value;
}
