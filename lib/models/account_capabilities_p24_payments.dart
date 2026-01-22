// ignore_for_file: type=lint
/// auto generated
///  The status of the P24 payments capability of the account, or whether the account can directly process P24 charges.
enum AccountCapabilitiesP24Payments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesP24Payments(this.value);
  final String value;
}
