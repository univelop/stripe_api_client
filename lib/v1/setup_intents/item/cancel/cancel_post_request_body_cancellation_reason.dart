// ignore_for_file: type=lint
/// auto generated
///  Reason for canceling this SetupIntent. Possible values are: `abandoned`, `requested_by_customer`, or `duplicate`
enum CancelPostRequestBodyCancellationReason {
  abandoned('abandoned'),
  duplicate('duplicate'),
  requestedByCustomer('requested_by_customer');

  const CancelPostRequestBodyCancellationReason(this.value);
  final String value;
}
