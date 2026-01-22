// ignore_for_file: type=lint
/// auto generated
///  The status of the KrCard capability of the account, or whether the account can directly process KrCard payments.
enum AccountCapabilitiesKrCardPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesKrCardPayments(this.value);
  final String value;
}
