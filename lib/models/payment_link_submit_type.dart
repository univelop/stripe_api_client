// ignore_for_file: type=lint
/// auto generated
///  Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
enum PaymentLinkSubmitType {
  auto('auto'),
  book('book'),
  donate('donate'),
  pay('pay'),
  subscribe('subscribe');

  const PaymentLinkSubmitType(this.value);
  final String value;
}
