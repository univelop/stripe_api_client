// ignore_for_file: type=lint
/// auto generated
///  The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://docs.stripe.com/sources) used.
enum SourceType {
  achCreditTransfer('ach_credit_transfer'),
  achDebit('ach_debit'),
  acssDebit('acss_debit'),
  alipay('alipay'),
  auBecsDebit('au_becs_debit'),
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

  const SourceType(this.value);
  final String value;
}
