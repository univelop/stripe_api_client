// ignore_for_file: type=lint
/// auto generated
///  The status of the SEPA Direct Debits payments capability of the account, or whether the account can directly process SEPA Direct Debits charges.
enum AccountCapabilitiesSepaDebitPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesSepaDebitPayments(this.value);
  final String value;
}
