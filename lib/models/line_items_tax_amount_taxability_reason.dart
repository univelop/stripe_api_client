// ignore_for_file: type=lint
/// auto generated
///  The reasoning behind this tax, for example, if the product is tax exempt. The possible values for this field may be extended as new tax rules are supported.
enum LineItemsTaxAmountTaxabilityReason {
  customerExempt('customer_exempt'),
  notCollecting('not_collecting'),
  notSubjectToTax('not_subject_to_tax'),
  notSupported('not_supported'),
  portionProductExempt('portion_product_exempt'),
  portionReducedRated('portion_reduced_rated'),
  portionStandardRated('portion_standard_rated'),
  productExempt('product_exempt'),
  productExemptHoliday('product_exempt_holiday'),
  proportionallyRated('proportionally_rated'),
  reducedRated('reduced_rated'),
  reverseCharge('reverse_charge'),
  standardRated('standard_rated'),
  taxableBasisReduced('taxable_basis_reduced'),
  zeroRated('zero_rated');

  const LineItemsTaxAmountTaxabilityReason(this.value);
  final String value;
}
