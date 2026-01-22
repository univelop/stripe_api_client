// ignore_for_file: type=lint
/// auto generated
///  The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
enum QuotesResourceRecurringInterval {
  day('day'),
  month('month'),
  week('week'),
  year('year');

  const QuotesResourceRecurringInterval(this.value);
  final String value;
}
