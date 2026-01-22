// ignore_for_file: type=lint
/// auto generated
///  Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
enum ShippingRatesPostRequestBodyTaxBehavior {
  exclusive('exclusive'),
  inclusive('inclusive'),
  unspecified('unspecified');

  const ShippingRatesPostRequestBodyTaxBehavior(this.value);
  final String value;
}
