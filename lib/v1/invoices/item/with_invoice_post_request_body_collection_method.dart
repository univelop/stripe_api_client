// ignore_for_file: type=lint
/// auto generated
///  Either `charge_automatically` or `send_invoice`. This field can be updated only on `draft` invoices.
enum WithInvoicePostRequestBodyCollectionMethod {
  chargeAutomatically('charge_automatically'),
  sendInvoice('send_invoice');

  const WithInvoicePostRequestBodyCollectionMethod(this.value);
  final String value;
}
