// ignore_for_file: type=lint
/// auto generated
///  Specifies whether the `amount` includes taxes. If `tax_behavior=inclusive`, then the amount includes taxes.
enum CalculationLineItemTaxBehavior {
  exclusive('exclusive'),
  inclusive('inclusive');

  const CalculationLineItemTaxBehavior(this.value);
  final String value;
}
