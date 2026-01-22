// ignore_for_file: type=lint
/// auto generated
///  The status of the AmazonPay capability of the account, or whether the account can directly process AmazonPay payments.
enum AccountCapabilitiesAmazonPayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesAmazonPayPayments(this.value);
  final String value;
}
