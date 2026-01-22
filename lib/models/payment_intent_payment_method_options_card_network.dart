// ignore_for_file: type=lint
/// auto generated
///  Selected network to process this payment intent on. Depends on the available networks of the card attached to the payment intent. Can be only set confirm-time.
enum PaymentIntentPaymentMethodOptionsCardNetwork {
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

  const PaymentIntentPaymentMethodOptionsCardNetwork(this.value);
  final String value;
}
