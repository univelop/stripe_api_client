// ignore_for_file: type=lint
/// auto generated
///  Request ability to [increment the authorization](/payments/incremental-authorization) for this CheckoutSession.
enum CheckoutCardPaymentMethodOptionsRequestIncrementalAuthorization {
  ifAvailable('if_available'),
  never('never');

  const CheckoutCardPaymentMethodOptionsRequestIncrementalAuthorization(
      this.value);
  final String value;
}
