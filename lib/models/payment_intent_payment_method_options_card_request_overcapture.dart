// ignore_for_file: type=lint
/// auto generated
///  Request ability to [overcapture](https://docs.stripe.com/payments/overcapture) for this PaymentIntent.
enum PaymentIntentPaymentMethodOptionsCardRequestOvercapture {
  ifAvailable('if_available'),
  never('never');

  const PaymentIntentPaymentMethodOptionsCardRequestOvercapture(this.value);
  final String value;
}
