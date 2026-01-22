// ignore_for_file: type=lint
/// auto generated
///  The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
enum BankAccountsPostRequestBodyAccountType {
  checking('checking'),
  futsu('futsu'),
  savings('savings'),
  toza('toza');

  const BankAccountsPostRequestBodyAccountType(this.value);
  final String value;
}
