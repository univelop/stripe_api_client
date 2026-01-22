// ignore_for_file: type=lint
/// auto generated
///  The rails used to send the funds.
enum ReceivedCreditNetwork {
  ach('ach'),
  card('card'),
  stripe('stripe'),
  usDomesticWire('us_domestic_wire');

  const ReceivedCreditNetwork(this.value);
  final String value;
}
