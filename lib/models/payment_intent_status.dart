// ignore_for_file: type=lint
/// auto generated
///  Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://docs.stripe.com/payments/intents#intent-statuses).
enum PaymentIntentStatus {
  canceled('canceled'),
  processing('processing'),
  requiresAction('requires_action'),
  requiresCapture('requires_capture'),
  requiresConfirmation('requires_confirmation'),
  requiresPaymentMethod('requires_payment_method'),
  succeeded('succeeded');

  const PaymentIntentStatus(this.value);
  final String value;
}
