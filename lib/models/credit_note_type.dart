// ignore_for_file: type=lint
/// auto generated
///  Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
enum CreditNoteType {
  mixed('mixed'),
  postPayment('post_payment'),
  prePayment('pre_payment');

  const CreditNoteType(this.value);
  final String value;
}
