// ignore_for_file: type=lint
/// auto generated
///  Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
enum OutboundPaymentStatus {
  canceled('canceled'),
  failed('failed'),
  posted('posted'),
  processing('processing'),
  returned('returned');

  const OutboundPaymentStatus(this.value);
  final String value;
}
