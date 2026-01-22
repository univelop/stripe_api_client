// ignore_for_file: type=lint
/// auto generated
///  The status of the promptpay payments capability of the account, or whether the account can directly process promptpay charges.
enum AccountCapabilitiesPromptpayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesPromptpayPayments(this.value);
  final String value;
}
