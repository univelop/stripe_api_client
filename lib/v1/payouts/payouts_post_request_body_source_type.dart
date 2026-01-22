// ignore_for_file: type=lint
/// auto generated
///  The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the Balances API. One of `bank_account`, `card`, or `fpx`.
enum PayoutsPostRequestBodySourceType {
  bankAccount('bank_account'),
  card('card'),
  fpx('fpx');

  const PayoutsPostRequestBodySourceType(this.value);
  final String value;
}
