// ignore_for_file: type=lint
/// auto generated
///  Surfaces if automatic tax computation is possible given the current customer location information.
enum CustomerTaxAutomaticTax {
  failed('failed'),
  notCollecting('not_collecting'),
  supported('supported'),
  unrecognizedLocation('unrecognized_location');

  const CustomerTaxAutomaticTax(this.value);
  final String value;
}
