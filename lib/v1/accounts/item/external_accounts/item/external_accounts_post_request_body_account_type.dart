// ignore_for_file: type=lint
/// auto generated
///  The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
enum ExternalAccountsPostRequestBodyAccountType {
  checking('checking'),
  futsu('futsu'),
  savings('savings'),
  toza('toza');

  const ExternalAccountsPostRequestBodyAccountType(this.value);
  final String value;
}
