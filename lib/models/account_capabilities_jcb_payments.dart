// ignore_for_file: type=lint
/// auto generated
///  The status of the JCB payments capability of the account, or whether the account (Japan only) can directly process JCB credit card charges in JPY currency.
enum AccountCapabilitiesJcbPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesJcbPayments(this.value);
  final String value;
}
