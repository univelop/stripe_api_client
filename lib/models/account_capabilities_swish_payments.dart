// ignore_for_file: type=lint
/// auto generated
///  The status of the Swish capability of the account, or whether the account can directly process Swish payments.
enum AccountCapabilitiesSwishPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesSwishPayments(this.value);
  final String value;
}
