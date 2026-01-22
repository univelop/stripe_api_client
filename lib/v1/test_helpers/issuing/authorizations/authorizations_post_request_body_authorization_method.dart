// ignore_for_file: type=lint
/// auto generated
///  How the card details were provided. Defaults to online.
enum AuthorizationsPostRequestBodyAuthorizationMethod {
  chip('chip'),
  contactless('contactless'),
  keyedIn('keyed_in'),
  online('online'),
  swipe('swipe');

  const AuthorizationsPostRequestBodyAuthorizationMethod(this.value);
  final String value;
}
