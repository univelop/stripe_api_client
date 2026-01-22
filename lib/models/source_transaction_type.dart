// ignore_for_file: type=lint
/// auto generated
///  The type of source this transaction is attached to.
enum SourceTransactionType {
  achCreditTransfer('ach_credit_transfer'),
  achDebit('ach_debit'),
  alipay('alipay'),
  bancontact('bancontact'),
  card('card'),
  cardPresent('card_present'),
  eps('eps'),
  giropay('giropay'),
  ideal('ideal'),
  klarna('klarna'),
  multibanco('multibanco'),
  p24('p24'),
  sepaDebit('sepa_debit'),
  sofort('sofort'),
  threeDSecure('three_d_secure'),
  wechat('wechat');

  const SourceTransactionType(this.value);
  final String value;
}
