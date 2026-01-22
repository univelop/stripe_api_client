// ignore_for_file: type=lint
/// auto generated
///  The status of the Crypto capability of the account, or whether the account can directly process Crypto payments.
enum AccountCapabilitiesCryptoPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesCryptoPayments(this.value);
  final String value;
}
