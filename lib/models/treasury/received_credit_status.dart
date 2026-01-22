// ignore_for_file: type=lint
/// auto generated
///  Status of the ReceivedCredit. ReceivedCredits are created either `succeeded` (approved) or `failed` (declined). If a ReceivedCredit is declined, the failure reason can be found in the `failure_code` field.
enum ReceivedCreditStatus {
  failed('failed'),
  succeeded('succeeded');

  const ReceivedCreditStatus(this.value);
  final String value;
}
