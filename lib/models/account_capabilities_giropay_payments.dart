// ignore_for_file: type=lint
/// auto generated
///  The status of the giropay payments capability of the account, or whether the account can directly process giropay charges.
enum AccountCapabilitiesGiropayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesGiropayPayments(this.value);
  final String value;
}
