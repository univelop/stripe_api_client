// ignore_for_file: type=lint
/// auto generated
///  One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
enum SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType {
  fixed('fixed'),
  maximum('maximum');

  const SetupIntentPaymentMethodOptionsCardMandateOptionsAmountType(this.value);
  final String value;
}
