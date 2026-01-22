// ignore_for_file: type=lint
/// auto generated
///  The status of the paynow payments capability of the account, or whether the account can directly process paynow charges.
enum AccountCapabilitiesPaynowPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesPaynowPayments(this.value);
  final String value;
}
