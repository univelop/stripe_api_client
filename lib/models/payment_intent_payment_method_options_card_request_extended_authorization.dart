// ignore_for_file: type=lint
/// auto generated
///  Request ability to [capture beyond the standard authorization validity window](https://docs.stripe.com/payments/extended-authorization) for this PaymentIntent.
enum PaymentIntentPaymentMethodOptionsCardRequestExtendedAuthorization {
  ifAvailable('if_available'),
  never('never');

  const PaymentIntentPaymentMethodOptionsCardRequestExtendedAuthorization(
      this.value);
  final String value;
}
