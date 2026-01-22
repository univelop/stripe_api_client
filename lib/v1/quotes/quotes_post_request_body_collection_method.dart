// ignore_for_file: type=lint
/// auto generated
///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay invoices at the end of the subscription cycle or at invoice finalization using the default payment method attached to the subscription or customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
enum QuotesPostRequestBodyCollectionMethod {
  chargeAutomatically('charge_automatically'),
  sendInvoice('send_invoice');

  const QuotesPostRequestBodyCollectionMethod(this.value);
  final String value;
}
