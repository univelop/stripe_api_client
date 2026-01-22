// ignore_for_file: type=lint
/// auto generated
///  The status of the RevolutPay capability of the account, or whether the account can directly process RevolutPay payments.
enum AccountCapabilitiesRevolutPayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesRevolutPayPayments(this.value);
  final String value;
}
