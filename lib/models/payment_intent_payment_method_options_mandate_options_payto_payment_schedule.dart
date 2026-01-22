// ignore_for_file: type=lint
/// auto generated
///  The periodicity at which payments will be collected. Defaults to `adhoc`.
enum PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule {
  adhoc('adhoc'),
  annual('annual'),
  daily('daily'),
  fortnightly('fortnightly'),
  monthly('monthly'),
  quarterly('quarterly'),
  semiAnnual('semi_annual'),
  weekly('weekly');

  const PaymentIntentPaymentMethodOptionsMandateOptionsPaytoPaymentSchedule(
      this.value);
  final String value;
}
