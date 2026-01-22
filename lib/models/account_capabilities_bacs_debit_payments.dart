// ignore_for_file: type=lint
/// auto generated
///  The status of the Bacs Direct Debits payments capability of the account, or whether the account can directly process Bacs Direct Debits charges.
enum AccountCapabilitiesBacsDebitPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesBacsDebitPayments(this.value);
  final String value;
}
