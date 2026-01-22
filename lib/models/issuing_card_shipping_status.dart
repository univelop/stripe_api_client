// ignore_for_file: type=lint
/// auto generated
///  The delivery status of the card.
enum IssuingCardShippingStatus {
  canceled('canceled'),
  delivered('delivered'),
  failure('failure'),
  pending('pending'),
  returned('returned'),
  shipped('shipped'),
  submitted('submitted');

  const IssuingCardShippingStatus(this.value);
  final String value;
}
