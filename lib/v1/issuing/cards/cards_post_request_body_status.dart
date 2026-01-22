// ignore_for_file: type=lint
/// auto generated
///  Whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`.
enum CardsPostRequestBodyStatus {
  active('active'),
  inactive('inactive');

  const CardsPostRequestBodyStatus(this.value);
  final String value;
}
