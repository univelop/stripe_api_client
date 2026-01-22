// ignore_for_file: type=lint
/// auto generated
///  Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
enum PaymentMethodOptionsCardMandateOptionsInterval {
  day('day'),
  month('month'),
  sporadic('sporadic'),
  week('week'),
  year('year');

  const PaymentMethodOptionsCardMandateOptionsInterval(this.value);
  final String value;
}
