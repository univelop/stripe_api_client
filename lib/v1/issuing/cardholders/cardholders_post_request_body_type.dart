// ignore_for_file: type=lint
/// auto generated
///  One of `individual` or `company`. See [Choose a cardholder type](https://docs.stripe.com/issuing/other/choose-cardholder) for more details.
enum CardholdersPostRequestBodyType {
  company('company'),
  individual('individual');

  const CardholdersPostRequestBodyType(this.value);
  final String value;
}
