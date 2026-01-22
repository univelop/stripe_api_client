// ignore_for_file: type=lint
/// auto generated
///  Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
enum CardStatus {
  active('active'),
  canceled('canceled'),
  inactive('inactive');

  const CardStatus(this.value);
  final String value;
}
