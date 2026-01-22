// ignore_for_file: type=lint
/// auto generated
///  The status of the OXXO payments capability of the account, or whether the account can directly process OXXO charges.
enum AccountCapabilitiesOxxoPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesOxxoPayments(this.value);
  final String value;
}
