// ignore_for_file: type=lint
/// auto generated
///  The status of the link_payments capability of the account, or whether the account can directly process Link charges.
enum AccountCapabilitiesLinkPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesLinkPayments(this.value);
  final String value;
}
