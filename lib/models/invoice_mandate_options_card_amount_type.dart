// ignore_for_file: type=lint
/// auto generated
///  One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
enum InvoiceMandateOptionsCardAmountType {
  fixed('fixed'),
  maximum('maximum');

  const InvoiceMandateOptionsCardAmountType(this.value);
  final String value;
}
