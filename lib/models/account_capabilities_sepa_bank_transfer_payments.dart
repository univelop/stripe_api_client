// ignore_for_file: type=lint
/// auto generated
///  The status of the SEPA customer_balance payments (EUR currency) capability of the account, or whether the account can directly process SEPA customer_balance charges.
enum AccountCapabilitiesSepaBankTransferPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesSepaBankTransferPayments(this.value);
  final String value;
}
