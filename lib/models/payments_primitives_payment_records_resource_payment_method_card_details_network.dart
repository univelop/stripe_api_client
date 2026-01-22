// ignore_for_file: type=lint
/// auto generated
///  Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
enum PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork {
  amex('amex'),
  cartesBancaires('cartes_bancaires'),
  diners('diners'),
  discover('discover'),
  eftposAu('eftpos_au'),
  interac('interac'),
  jcb('jcb'),
  link('link'),
  mastercard('mastercard'),
  unionpay('unionpay'),
  unknown('unknown'),
  visa('visa');

  const PaymentsPrimitivesPaymentRecordsResourcePaymentMethodCardDetailsNetwork(
      this.value);
  final String value;
}
