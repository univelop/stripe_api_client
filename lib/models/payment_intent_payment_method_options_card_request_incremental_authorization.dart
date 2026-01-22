// ignore_for_file: type=lint
/// auto generated
///  Request ability to [increment the authorization](https://docs.stripe.com/payments/incremental-authorization) for this PaymentIntent.
enum PaymentIntentPaymentMethodOptionsCardRequestIncrementalAuthorization {
  ifAvailable('if_available'),
  never('never');

  const PaymentIntentPaymentMethodOptionsCardRequestIncrementalAuthorization(
      this.value);
  final String value;
}
