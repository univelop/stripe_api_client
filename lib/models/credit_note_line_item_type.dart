// ignore_for_file: type=lint
/// auto generated
///  The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
enum CreditNoteLineItemType {
  customLineItem('custom_line_item'),
  invoiceLineItem('invoice_line_item');

  const CreditNoteLineItemType(this.value);
  final String value;
}
