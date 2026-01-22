// ignore_for_file: type=lint
/// auto generated
///  How to handle pending invoice items on invoice creation. Defaults to `exclude` if the parameter is omitted.
enum InvoicesPostRequestBodyPendingInvoiceItemsBehavior {
  exclude('exclude'),
  include('include');

  const InvoicesPostRequestBodyPendingInvoiceItemsBehavior(this.value);
  final String value;
}
