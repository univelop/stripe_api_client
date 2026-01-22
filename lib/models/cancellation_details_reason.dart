// ignore_for_file: type=lint
/// auto generated
///  Why this subscription was canceled.
enum CancellationDetailsReason {
  cancellationRequested('cancellation_requested'),
  paymentDisputed('payment_disputed'),
  paymentFailed('payment_failed');

  const CancellationDetailsReason(this.value);
  final String value;
}
