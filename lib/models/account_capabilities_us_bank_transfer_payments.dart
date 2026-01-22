// ignore_for_file: type=lint
/// auto generated
///  The status of the US customer_balance payments (USD currency) capability of the account, or whether the account can directly process US customer_balance charges.
enum AccountCapabilitiesUsBankTransferPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesUsBankTransferPayments(this.value);
  final String value;
}
