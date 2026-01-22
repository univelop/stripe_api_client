// ignore_for_file: type=lint
/// auto generated
///  The status of the New Zealand BECS Direct Debit payments capability of the account, or whether the account can directly process New Zealand BECS Direct Debit charges.
enum AccountCapabilitiesNzBankAccountBecsDebitPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesNzBankAccountBecsDebitPayments(this.value);
  final String value;
}
