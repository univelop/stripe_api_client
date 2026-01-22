// ignore_for_file: type=lint
/// auto generated
///  Reason for canceling this PaymentIntent. Possible values are: `duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`
enum CancelPostRequestBodyCancellationReason {
  abandoned('abandoned'),
  duplicate('duplicate'),
  fraudulent('fraudulent'),
  requestedByCustomer('requested_by_customer');

  const CancelPostRequestBodyCancellationReason(this.value);
  final String value;
}
