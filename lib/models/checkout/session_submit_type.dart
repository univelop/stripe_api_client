// ignore_for_file: type=lint
/// auto generated
///  Describes the type of transaction being performed by Checkout in order to customizerelevant text on the page, such as the submit button. `submit_type` can only bespecified on Checkout Sessions in `payment` mode. If blank or `auto`, `pay` is used.
enum SessionSubmitType {
  auto('auto'),
  book('book'),
  donate('donate'),
  pay('pay'),
  subscribe('subscribe');

  const SessionSubmitType(this.value);
  final String value;
}
