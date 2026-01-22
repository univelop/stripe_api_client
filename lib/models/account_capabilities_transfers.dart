// ignore_for_file: type=lint
/// auto generated
///  The status of the transfers capability of the account, or whether your platform can transfer funds to the account.
enum AccountCapabilitiesTransfers {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesTransfers(this.value);
  final String value;
}
