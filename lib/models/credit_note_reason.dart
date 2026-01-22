// ignore_for_file: type=lint
/// auto generated
///  Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
enum CreditNoteReason {
  duplicate('duplicate'),
  fraudulent('fraudulent'),
  orderChange('order_change'),
  productUnsatisfactory('product_unsatisfactory');

  const CreditNoteReason(this.value);
  final String value;
}
