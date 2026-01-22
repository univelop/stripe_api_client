// ignore_for_file: type=lint
/// auto generated
///  Request ability to make [multiple captures](https://docs.stripe.com/payments/multicapture) for this PaymentIntent.
enum PaymentIntentPaymentMethodOptionsCardRequestMulticapture {
  ifAvailable('if_available'),
  never('never');

  const PaymentIntentPaymentMethodOptionsCardRequestMulticapture(this.value);
  final String value;
}
