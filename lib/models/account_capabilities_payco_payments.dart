// ignore_for_file: type=lint
/// auto generated
///  The status of the Payco capability of the account, or whether the account can directly process Payco payments.
enum AccountCapabilitiesPaycoPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesPaycoPayments(this.value);
  final String value;
}
