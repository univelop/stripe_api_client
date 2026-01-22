// ignore_for_file: type=lint
/// auto generated
///  The status of the Multibanco payments capability of the account, or whether the account can directly process Multibanco charges.
enum AccountCapabilitiesMultibancoPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesMultibancoPayments(this.value);
  final String value;
}
