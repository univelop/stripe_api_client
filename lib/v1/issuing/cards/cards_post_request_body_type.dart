// ignore_for_file: type=lint
/// auto generated
///  The type of card to issue. Possible values are `physical` or `virtual`.
enum CardsPostRequestBodyType {
  physical('physical'),
  virtual('virtual');

  const CardsPostRequestBodyType(this.value);
  final String value;
}
