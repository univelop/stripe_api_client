// ignore_for_file: type=lint
/// auto generated
///  Status of the ReceivedDebit. ReceivedDebits are created with a status of either `succeeded` (approved) or `failed` (declined). The failure reason can be found under the `failure_code`.
enum ReceivedDebitStatus {
  failed('failed'),
  succeeded('succeeded');

  const ReceivedDebitStatus(this.value);
  final String value;
}
