// ignore_for_file: type=lint
/// auto generated
///  Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://docs.stripe.com/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
enum PaymentLinksPostRequestBodySubmitType {
  auto('auto'),
  book('book'),
  donate('donate'),
  pay('pay'),
  subscribe('subscribe');

  const PaymentLinksPostRequestBodySubmitType(this.value);
  final String value;
}
