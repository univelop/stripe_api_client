// ignore_for_file: type=lint
/// auto generated
///  Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
enum PaymentIntentsPostRequestBodyConfirmationMethod {
  automatic('automatic'),
  manual('manual');

  const PaymentIntentsPostRequestBodyConfirmationMethod(this.value);
  final String value;
}
