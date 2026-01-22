// ignore_for_file: type=lint
/// auto generated
///  The mandate status indicates whether or not you can use it to initiate a payment.
enum MandateStatus {
  active('active'),
  inactive('inactive'),
  pending('pending');

  const MandateStatus(this.value);
  final String value;
}
