// ignore_for_file: type=lint
/// auto generated
///  The customer's bank, if provided. Can be one of `abn_amro`, `asn_bank`, `bunq`, `buut`, `finom`, `handelsbanken`, `ing`, `knab`, `mollie`, `moneyou`, `n26`, `nn`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, `van_lanschot`, or `yoursafe`.
enum PaymentMethodIdealBank {
  abnAmro('abn_amro'),
  asnBank('asn_bank'),
  bunq('bunq'),
  buut('buut'),
  finom('finom'),
  handelsbanken('handelsbanken'),
  ing('ing'),
  knab('knab'),
  mollie('mollie'),
  moneyou('moneyou'),
  n26('n26'),
  nn('nn'),
  rabobank('rabobank'),
  regiobank('regiobank'),
  revolut('revolut'),
  snsBank('sns_bank'),
  triodosBank('triodos_bank'),
  vanLanschot('van_lanschot'),
  yoursafe('yoursafe');

  const PaymentMethodIdealBank(this.value);
  final String value;
}
