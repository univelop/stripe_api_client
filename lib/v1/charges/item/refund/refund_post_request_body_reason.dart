// ignore_for_file: type=lint
/// auto generated
///  String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://docs.stripe.com/radar/lists), and will also help us improve our fraud detection algorithms.
enum RefundPostRequestBodyReason {
  duplicate('duplicate'),
  fraudulent('fraudulent'),
  requestedByCustomer('requested_by_customer');

  const RefundPostRequestBodyReason(this.value);
  final String value;
}
