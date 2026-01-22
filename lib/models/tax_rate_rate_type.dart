// ignore_for_file: type=lint
/// auto generated
///  Indicates the type of tax rate applied to the taxable amount. This value can be `null` when no tax applies to the location. This field is only present for TaxRates created by Stripe Tax.
enum TaxRateRateType {
  flatAmount('flat_amount'),
  percentage('percentage');

  const TaxRateRateType(this.value);
  final String value;
}
