// ignore_for_file: type=lint
/// auto generated
///  The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
enum RecurringInterval {
  day('day'),
  month('month'),
  week('week'),
  year('year');

  const RecurringInterval(this.value);
  final String value;
}
