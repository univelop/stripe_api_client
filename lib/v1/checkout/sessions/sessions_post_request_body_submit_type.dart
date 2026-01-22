// ignore_for_file: type=lint
/// auto generated
///  Describes the type of transaction being performed by Checkout in orderto customize relevant text on the page, such as the submit button. `submit_type` can only be specified on Checkout Sessions in`payment` or `subscription` mode. If blank or `auto`, `pay` is used.
enum SessionsPostRequestBodySubmitType {
  auto('auto'),
  book('book'),
  donate('donate'),
  pay('pay'),
  subscribe('subscribe');

  const SessionsPostRequestBodySubmitType(this.value);
  final String value;
}
