// ignore_for_file: type=lint
/// auto generated
///  The status of the KakaoPay capability of the account, or whether the account can directly process KakaoPay payments.
enum AccountCapabilitiesKakaoPayPayments {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const AccountCapabilitiesKakaoPayPayments(this.value);
  final String value;
}
