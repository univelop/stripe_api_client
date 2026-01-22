// ignore_for_file: type=lint
/// auto generated
///  [Status](https://docs.stripe.com/payments/intents#intent-statuses) of this SetupIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `canceled`, or `succeeded`.
enum SetupIntentStatus {
  canceled('canceled'),
  processing('processing'),
  requiresAction('requires_action'),
  requiresConfirmation('requires_confirmation'),
  requiresPaymentMethod('requires_payment_method'),
  succeeded('succeeded');

  const SetupIntentStatus(this.value);
  final String value;
}
