// ignore_for_file: type=lint
/// auto generated
///  The type of the account. Account category is further divided in `subcategory`.
enum AccountCategory {
  cash('cash'),
  credit('credit'),
  investment('investment'),
  other('other');

  const AccountCategory(this.value);
  final String value;
}
