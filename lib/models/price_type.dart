// ignore_for_file: type=lint
/// auto generated
///  One of `one_time` or `recurring` depending on whether the price is for a one-time purchase or a recurring (subscription) purchase.
enum PriceType {
  oneTime('one_time'),
  recurring('recurring');

  const PriceType(this.value);
  final String value;
}
