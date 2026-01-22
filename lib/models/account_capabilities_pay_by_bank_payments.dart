// ignore_for_file: type=lint
/// auto generated
///  The status of the pay_by_bank payments capability of the account, or whether the account can directly process pay_by_bank charges.
enum AccountCapabilitiesPayByBankPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesPayByBankPayments(this.value);
  final String value;
}
