// ignore_for_file: type=lint
/// auto generated
///  Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
enum PaymentIntentConfirmationMethod {
  automatic('automatic'),
  manual('manual');

  const PaymentIntentConfirmationMethod(this.value);
  final String value;
}
