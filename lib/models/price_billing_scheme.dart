// ignore_for_file: type=lint
/// auto generated
///  Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
enum PriceBillingScheme {
  perUnit('per_unit'),
  tiered('tiered');

  const PriceBillingScheme(this.value);
  final String value;
}
