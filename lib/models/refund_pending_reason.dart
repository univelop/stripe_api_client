// ignore_for_file: type=lint
/// auto generated
///  Provides the reason for why the refund is pending. Possible values are: `processing`, `insufficient_funds`, or `charge_pending`.
enum RefundPendingReason {
  chargePending('charge_pending'),
  insufficientFunds('insufficient_funds'),
  processing('processing');

  const RefundPendingReason(this.value);
  final String value;
}
