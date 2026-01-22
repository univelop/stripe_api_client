// ignore_for_file: type=lint
/// auto generated
///  Indicates whether the customer was present in your checkout flow during this payment.
enum PaymentAttemptRecordCustomerPresence {
  offSession('off_session'),
  onSession('on_session');

  const PaymentAttemptRecordCustomerPresence(this.value);
  final String value;
}
