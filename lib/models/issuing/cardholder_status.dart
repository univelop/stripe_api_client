// ignore_for_file: type=lint
/// auto generated
///  Specifies whether to permit authorizations on this cardholder's cards.
enum CardholderStatus {
  active('active'),
  blocked('blocked'),
  inactive('inactive');

  const CardholderStatus(this.value);
  final String value;
}
