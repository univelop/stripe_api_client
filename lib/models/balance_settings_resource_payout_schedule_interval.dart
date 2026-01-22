// ignore_for_file: type=lint
/// auto generated
///  How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
enum BalanceSettingsResourcePayoutScheduleInterval {
  daily('daily'),
  manual('manual'),
  monthly('monthly'),
  weekly('weekly');

  const BalanceSettingsResourcePayoutScheduleInterval(this.value);
  final String value;
}
