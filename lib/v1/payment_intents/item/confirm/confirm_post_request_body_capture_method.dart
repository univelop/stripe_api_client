// ignore_for_file: type=lint
/// auto generated
///  Controls when the funds will be captured from the customer's account.
enum ConfirmPostRequestBodyCaptureMethod {
  automatic('automatic'),
  automaticAsync('automatic_async'),
  manual('manual');

  const ConfirmPostRequestBodyCaptureMethod(this.value);
  final String value;
}
