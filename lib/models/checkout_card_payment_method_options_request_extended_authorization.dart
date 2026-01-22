// ignore_for_file: type=lint
/// auto generated
///  Request ability to [capture beyond the standard authorization validity window](/payments/extended-authorization) for this CheckoutSession.
enum CheckoutCardPaymentMethodOptionsRequestExtendedAuthorization {
  ifAvailable('if_available'),
  never('never');

  const CheckoutCardPaymentMethodOptionsRequestExtendedAuthorization(
      this.value);
  final String value;
}
