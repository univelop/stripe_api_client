// ignore_for_file: type=lint
/// auto generated
///  The status of the Zip capability of the account, or whether the account can directly process Zip charges.
enum AccountCapabilitiesZipPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesZipPayments(this.value);
  final String value;
}
