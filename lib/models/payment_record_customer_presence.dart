// ignore_for_file: type=lint
/// auto generated
///  Indicates whether the customer was present in your checkout flow during this payment.
enum PaymentRecordCustomerPresence {
  offSession('off_session'),
  onSession('on_session');

  const PaymentRecordCustomerPresence(this.value);
  final String value;
}
