// ignore_for_file: type=lint
/// auto generated
///  Selected network to process this Subscription on. Depends on the available networks of the card attached to the Subscription. Can be only set confirm-time.
enum SubscriptionPaymentMethodOptionsCardNetwork {
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

  const SubscriptionPaymentMethodOptionsCardNetwork(this.value);
  final String value;
}
