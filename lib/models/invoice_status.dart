// ignore_for_file: type=lint
/// auto generated
///  The status of the invoice, one of `draft`, `open`, `paid`, `uncollectible`, or `void`. [Learn more](https://docs.stripe.com/billing/invoices/workflow#workflow-overview)
enum InvoiceStatus {
  draft('draft'),
  open('open'),
  paid('paid'),
  uncollectible('uncollectible'),
  void_('void');

  const InvoiceStatus(this.value);
  final String value;
}
