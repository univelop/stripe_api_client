// ignore_for_file: type=lint
/// auto generated
///  Controls when the funds will be captured from the customer's account.
enum PaymentIntentsPostRequestBodyCaptureMethod {
  automatic('automatic'),
  automaticAsync('automatic_async'),
  manual('manual');

  const PaymentIntentsPostRequestBodyCaptureMethod(this.value);
  final String value;
}
