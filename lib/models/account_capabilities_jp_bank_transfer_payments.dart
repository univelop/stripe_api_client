// ignore_for_file: type=lint
/// auto generated
///  The status of the Japanese customer_balance payments (JPY currency) capability of the account, or whether the account can directly process Japanese customer_balance charges.
enum AccountCapabilitiesJpBankTransferPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesJpBankTransferPayments(this.value);
  final String value;
}
