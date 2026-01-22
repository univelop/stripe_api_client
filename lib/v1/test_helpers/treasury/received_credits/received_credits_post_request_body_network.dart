// ignore_for_file: type=lint
/// auto generated
///  Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
enum ReceivedCreditsPostRequestBodyNetwork {
  ach('ach'),
  usDomesticWire('us_domestic_wire');

  const ReceivedCreditsPostRequestBodyNetwork(this.value);
  final String value;
}
