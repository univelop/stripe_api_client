// ignore_for_file: type=lint
/// auto generated
///  The network rails used. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
enum OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork {
  ach('ach'),
  usDomesticWire('us_domestic_wire');

  const OutboundPaymentsPaymentMethodDetailsUsBankAccountNetwork(this.value);
  final String value;
}
