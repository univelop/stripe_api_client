// ignore_for_file: type=lint
/// auto generated
///  If Stripe disabled automatic tax, this enum describes why.
enum AutomaticTaxDisabledReason {
  finalizationRequiresLocationInputs('finalization_requires_location_inputs'),
  finalizationSystemError('finalization_system_error');

  const AutomaticTaxDisabledReason(this.value);
  final String value;
}
