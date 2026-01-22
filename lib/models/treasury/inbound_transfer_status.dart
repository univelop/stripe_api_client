// ignore_for_file: type=lint
/// auto generated
///  Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
enum InboundTransferStatus {
  canceled('canceled'),
  failed('failed'),
  processing('processing'),
  succeeded('succeeded');

  const InboundTransferStatus(this.value);
  final String value;
}
