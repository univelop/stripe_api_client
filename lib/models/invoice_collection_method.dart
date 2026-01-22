// ignore_for_file: type=lint
/// auto generated
///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions.
enum InvoiceCollectionMethod {
  chargeAutomatically('charge_automatically'),
  sendInvoice('send_invoice');

  const InvoiceCollectionMethod(this.value);
  final String value;
}
