// ignore_for_file: type=lint
/// auto generated
///  Configuration for collecting a payment method during checkout. Defaults to `always`.
enum PaymentLinkPaymentMethodCollection {
  always('always'),
  ifRequired('if_required');

  const PaymentLinkPaymentMethodCollection(this.value);
  final String value;
}
