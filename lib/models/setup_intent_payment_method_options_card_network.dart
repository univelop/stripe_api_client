// ignore_for_file: type=lint
/// auto generated
///  Selected network to process this SetupIntent on. Depends on the available networks of the card attached to the setup intent. Can be only set confirm-time.
enum SetupIntentPaymentMethodOptionsCardNetwork {
  amex('amex'),
  cartesBancaires('cartes_bancaires'),
  diners('diners'),
  discover('discover'),
  eftposAu('eftpos_au'),
  girocard('girocard'),
  interac('interac'),
  jcb('jcb'),
  link('link'),
  mastercard('mastercard'),
  unionpay('unionpay'),
  unknown('unknown'),
  visa('visa');

  const SetupIntentPaymentMethodOptionsCardNetwork(this.value);
  final String value;
}
