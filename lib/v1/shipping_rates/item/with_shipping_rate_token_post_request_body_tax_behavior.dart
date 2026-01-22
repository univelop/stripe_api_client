// ignore_for_file: type=lint
/// auto generated
///  Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
enum WithShippingRateTokenPostRequestBodyTaxBehavior {
  exclusive('exclusive'),
  inclusive('inclusive'),
  unspecified('unspecified');

  const WithShippingRateTokenPostRequestBodyTaxBehavior(this.value);
  final String value;
}
