// ignore_for_file: type=lint
/// auto generated
///  The status of the most recent automated tax calculation for this invoice.
enum AutomaticTaxStatus {
  complete('complete'),
  failed('failed'),
  requiresLocationInputs('requires_location_inputs');

  const AutomaticTaxStatus(this.value);
  final String value;
}
