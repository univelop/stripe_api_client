// ignore_for_file: type=lint
/// auto generated
///  If `replacement_for` is specified, this should indicate why that card is being replaced.
enum CardsPostRequestBodyReplacementReason {
  damaged('damaged'),
  expired('expired'),
  lost('lost'),
  stolen('stolen');

  const CardsPostRequestBodyReplacementReason(this.value);
  final String value;
}
