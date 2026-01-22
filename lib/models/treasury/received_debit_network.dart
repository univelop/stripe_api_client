// ignore_for_file: type=lint
/// auto generated
///  The network used for the ReceivedDebit.
enum ReceivedDebitNetwork {
  ach('ach'),
  card('card'),
  stripe('stripe');

  const ReceivedDebitNetwork(this.value);
  final String value;
}
