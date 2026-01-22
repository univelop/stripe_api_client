// ignore_for_file: type=lint
/// auto generated
///  The status of the customer_balance payments capability of the account, or whether the account can directly process customer_balance charges.
enum AccountCapabilitiesBankTransferPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesBankTransferPayments(this.value);
  final String value;
}
