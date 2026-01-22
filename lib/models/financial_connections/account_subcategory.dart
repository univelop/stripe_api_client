// ignore_for_file: type=lint
/// auto generated
///  If `category` is `cash`, one of: - `checking` - `savings` - `other`If `category` is `credit`, one of: - `mortgage` - `line_of_credit` - `credit_card` - `other`If `category` is `investment` or `other`, this will be `other`.
enum AccountSubcategory {
  checking('checking'),
  creditCard('credit_card'),
  lineOfCredit('line_of_credit'),
  mortgage('mortgage'),
  other('other'),
  savings('savings');

  const AccountSubcategory(this.value);
  final String value;
}
