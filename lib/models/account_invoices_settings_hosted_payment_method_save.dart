// ignore_for_file: type=lint
/// auto generated
///  Whether to save the payment method after a payment is completed for a one-time invoice or a subscription invoice when the customer already has a default payment method on the hosted invoice page.
enum AccountInvoicesSettingsHostedPaymentMethodSave {
  always('always'),
  never('never'),
  offer('offer');

  const AccountInvoicesSettingsHostedPaymentMethodSave(this.value);
  final String value;
}
