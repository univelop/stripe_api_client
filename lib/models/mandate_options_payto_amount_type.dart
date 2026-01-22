// ignore_for_file: type=lint
/// auto generated
///  The type of amount that will be collected. The amount charged must be exact or up to the value of `amount` param for `fixed` or `maximum` type respectively. Defaults to `maximum`.
enum MandateOptionsPaytoAmountType {
  fixed('fixed'),
  maximum('maximum');

  const MandateOptionsPaytoAmountType(this.value);
  final String value;
}
