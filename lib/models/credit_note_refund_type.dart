// ignore_for_file: type=lint
/// auto generated
///  Type of the refund, one of `refund` or `payment_record_refund`.
enum CreditNoteRefundType {
  paymentRecordRefund('payment_record_refund'),
  refund('refund');

  const CreditNoteRefundType(this.value);
  final String value;
}
