// ignore_for_file: type=lint
/// auto generated
///  The status of the Bancontact payments capability of the account, or whether the account can directly process Bancontact charges.
enum AccountCapabilitiesBancontactPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesBancontactPayments(this.value);
  final String value;
}
