// ignore_for_file: type=lint
/// auto generated
///  Interval (or event) to which the amount applies.
enum IssuingCardSpendingLimitInterval {
  allTime('all_time'),
  daily('daily'),
  monthly('monthly'),
  perAuthorization('per_authorization'),
  weekly('weekly'),
  yearly('yearly');

  const IssuingCardSpendingLimitInterval(this.value);
  final String value;
}
