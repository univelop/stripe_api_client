// ignore_for_file: type=lint
/// auto generated
///  The status of the GB customer_balance payments (GBP currency) capability of the account, or whether the account can directly process GB customer_balance charges.
enum AccountCapabilitiesGbBankTransferPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesGbBankTransferPayments(this.value);
  final String value;
}
