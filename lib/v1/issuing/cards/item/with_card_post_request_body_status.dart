// ignore_for_file: type=lint
/// auto generated
///  Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
enum WithCardPostRequestBodyStatus {
  active('active'),
  canceled('canceled'),
  inactive('inactive');

  const WithCardPostRequestBodyStatus(this.value);
  final String value;
}
