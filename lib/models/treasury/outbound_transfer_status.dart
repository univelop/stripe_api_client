// ignore_for_file: type=lint
/// auto generated
///  Current status of the OutboundTransfer: `processing`, `failed`, `canceled`, `posted`, `returned`. An OutboundTransfer is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundTransfer has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundTransfer fails to arrive at its destination, its status will change to `returned`.
enum OutboundTransferStatus {
  canceled('canceled'),
  failed('failed'),
  posted('posted'),
  processing('processing'),
  returned('returned');

  const OutboundTransferStatus(this.value);
  final String value;
}
