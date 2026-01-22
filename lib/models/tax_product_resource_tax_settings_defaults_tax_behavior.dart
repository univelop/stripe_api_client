// ignore_for_file: type=lint
/// auto generated
///  Default [tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#tax-behavior) used to specify whether the price is considered inclusive of taxes or exclusive of taxes. If the item's price has a tax behavior set, it will take precedence over the default tax behavior.
enum TaxProductResourceTaxSettingsDefaultsTaxBehavior {
  exclusive('exclusive'),
  inclusive('inclusive'),
  inferredByCurrency('inferred_by_currency');

  const TaxProductResourceTaxSettingsDefaultsTaxBehavior(this.value);
  final String value;
}
