// ignore_for_file: type=lint
/// auto generated
///  Indicates the reason why the invoice was created.* `manual`: Unrelated to a subscription, for example, created via the invoice editor.* `subscription`: No longer in use. Applies to subscriptions from before May 2018 where no distinction was made between updates, cycles, and thresholds.* `subscription_create`: A new subscription was created.* `subscription_cycle`: A subscription advanced into a new period.* `subscription_threshold`: A subscription reached a billing threshold.* `subscription_update`: A subscription was updated.* `upcoming`: Reserved for upcoming invoices created through the Create Preview Invoice API or when an `invoice.upcoming` event is generated for an upcoming invoice on a subscription.
enum InvoiceBillingReason {
  automaticPendingInvoiceItemInvoice('automatic_pending_invoice_item_invoice'),
  manual('manual'),
  quoteAccept('quote_accept'),
  subscription('subscription'),
  subscriptionCreate('subscription_create'),
  subscriptionCycle('subscription_cycle'),
  subscriptionThreshold('subscription_threshold'),
  subscriptionUpdate('subscription_update'),
  upcoming('upcoming');

  const InvoiceBillingReason(this.value);
  final String value;
}
