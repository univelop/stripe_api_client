// ignore_for_file: type=lint
/// auto generated
///  Indicates whether the customer was present in your checkout flow during this payment.
enum ReportPaymentPostRequestBodyCustomerPresence {
  offSession('off_session'),
  onSession('on_session');

  const ReportPaymentPostRequestBodyCustomerPresence(this.value);
  final String value;
}
