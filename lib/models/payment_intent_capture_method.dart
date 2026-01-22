// ignore_for_file: type=lint
/// auto generated
///  Controls when the funds will be captured from the customer's account.
enum PaymentIntentCaptureMethod {
  automatic('automatic'),
  automaticAsync('automatic_async'),
  manual('manual');

  const PaymentIntentCaptureMethod(this.value);
  final String value;
}
