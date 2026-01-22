// ignore_for_file: type=lint
/// auto generated
///  The status of the konbini payments capability of the account, or whether the account can directly process konbini charges.
enum AccountCapabilitiesKonbiniPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesKonbiniPayments(this.value);
  final String value;
}
