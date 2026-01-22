// ignore_for_file: type=lint
/// auto generated
///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this invoice using the default source attached to the customer. When sending an invoice, Stripe will email this invoice to the customer with payment instructions. Defaults to `charge_automatically`.
enum InvoicesPostRequestBodyCollectionMethod {
  chargeAutomatically('charge_automatically'),
  sendInvoice('send_invoice');

  const InvoicesPostRequestBodyCollectionMethod(this.value);
  final String value;
}
