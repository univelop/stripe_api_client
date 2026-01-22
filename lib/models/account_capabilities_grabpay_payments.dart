// ignore_for_file: type=lint
/// auto generated
///  The status of the GrabPay payments capability of the account, or whether the account can directly process GrabPay charges.
enum AccountCapabilitiesGrabpayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesGrabpayPayments(this.value);
  final String value;
}
