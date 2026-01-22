// ignore_for_file: type=lint
/// auto generated
///  An enumerated value providing a more detailed explanation on [how to proceed with an error](https://docs.stripe.com/declines#retrying-issuer-declines).
enum ChargeOutcomeAdviceCode {
  confirmCardData('confirm_card_data'),
  doNotTryAgain('do_not_try_again'),
  tryAgainLater('try_again_later');

  const ChargeOutcomeAdviceCode(this.value);
  final String value;
}
