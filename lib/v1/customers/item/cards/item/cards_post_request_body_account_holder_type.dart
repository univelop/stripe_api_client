// ignore_for_file: type=lint
/// auto generated
///  The type of entity that holds the account. This can be either `individual` or `company`.
enum CardsPostRequestBodyAccountHolderType {
  company('company'),
  individual('individual');

  const CardsPostRequestBodyAccountHolderType(this.value);
  final String value;
}
