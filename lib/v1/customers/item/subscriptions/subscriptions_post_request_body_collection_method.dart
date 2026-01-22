// ignore_for_file: type=lint
/// auto generated
///  Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`. Defaults to `charge_automatically`.
enum SubscriptionsPostRequestBodyCollectionMethod {
  chargeAutomatically('charge_automatically'),
  sendInvoice('send_invoice');

  const SubscriptionsPostRequestBodyCollectionMethod(this.value);
  final String value;
}
