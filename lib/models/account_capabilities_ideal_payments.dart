// ignore_for_file: type=lint
/// auto generated
///  The status of the iDEAL payments capability of the account, or whether the account can directly process iDEAL charges.
enum AccountCapabilitiesIdealPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesIdealPayments(this.value);
  final String value;
}
