// ignore_for_file: type=lint
/// auto generated
///  Only required if a [default tax behavior](https://docs.stripe.com/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
enum WithPricePostRequestBodyTaxBehavior {
  exclusive('exclusive'),
  inclusive('inclusive'),
  unspecified('unspecified');

  const WithPricePostRequestBodyTaxBehavior(this.value);
  final String value;
}
