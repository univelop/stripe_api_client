// ignore_for_file: type=lint
/// auto generated
///  The status of the US bank account ACH payments capability of the account, or whether the account can directly process US bank account charges.
enum AccountCapabilitiesUsBankAccountAchPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesUsBankAccountAchPayments(this.value);
  final String value;
}
