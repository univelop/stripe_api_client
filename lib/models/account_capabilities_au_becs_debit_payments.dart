// ignore_for_file: type=lint
/// auto generated
///  The status of the BECS Direct Debit (AU) payments capability of the account, or whether the account can directly process BECS Direct Debit (AU) charges.
enum AccountCapabilitiesAuBecsDebitPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesAuBecsDebitPayments(this.value);
  final String value;
}
