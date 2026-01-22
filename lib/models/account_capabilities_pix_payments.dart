// ignore_for_file: type=lint
/// auto generated
///  The status of the pix payments capability of the account, or whether the account can directly process pix charges.
enum AccountCapabilitiesPixPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesPixPayments(this.value);
  final String value;
}
