// ignore_for_file: type=lint
/// auto generated
///  The type of entity that holds the account. This can be either `individual` or `company`.
enum SourcesPostRequestBodyAccountHolderType {
  company('company'),
  individual('individual');

  const SourcesPostRequestBodyAccountHolderType(this.value);
  final String value;
}
