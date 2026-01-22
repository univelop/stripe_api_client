// ignore_for_file: type=lint
/// auto generated
///  The source balance to use for this transfer. One of `bank_account`, `card`, or `fpx`. For most users, this will default to `card`.
enum TransfersPostRequestBodySourceType {
  bankAccount('bank_account'),
  card('card'),
  fpx('fpx');

  const TransfersPostRequestBodySourceType(this.value);
  final String value;
}
