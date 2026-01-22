// ignore_for_file: type=lint
/// auto generated
///  Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `amount`) will be charged per unit in `quantity` (for plans with `usage_type=licensed`), or per unit of total usage (for plans with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
enum PlanBillingScheme {
  perUnit('per_unit'),
  tiered('tiered');

  const PlanBillingScheme(this.value);
  final String value;
}
