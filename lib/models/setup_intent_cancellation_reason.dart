// ignore_for_file: type=lint
/// auto generated
///  Reason for cancellation of this SetupIntent, one of `abandoned`, `requested_by_customer`, or `duplicate`.
enum SetupIntentCancellationReason {
  abandoned('abandoned'),
  duplicate('duplicate'),
  requestedByCustomer('requested_by_customer');

  const SetupIntentCancellationReason(this.value);
  final String value;
}
