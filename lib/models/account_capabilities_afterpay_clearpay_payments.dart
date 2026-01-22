// ignore_for_file: type=lint
/// auto generated
///  The status of the Afterpay Clearpay capability of the account, or whether the account can directly process Afterpay Clearpay charges.
enum AccountCapabilitiesAfterpayClearpayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesAfterpayClearpayPayments(this.value);
  final String value;
}
