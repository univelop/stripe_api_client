// ignore_for_file: type=lint
/// auto generated
///  The status of the FPX payments capability of the account, or whether the account can directly process FPX charges.
enum AccountCapabilitiesFpxPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesFpxPayments(this.value);
  final String value;
}
