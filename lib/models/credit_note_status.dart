// ignore_for_file: type=lint
/// auto generated
///  Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://docs.stripe.com/billing/invoices/credit-notes#voiding).
enum CreditNoteStatus {
  issued('issued'),
  void_('void');

  const CreditNoteStatus(this.value);
  final String value;
}
