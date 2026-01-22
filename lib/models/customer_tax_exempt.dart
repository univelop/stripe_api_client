// ignore_for_file: type=lint
/// auto generated
///  Describes the customer's tax exemption status, which is `none`, `exempt`, or `reverse`. When set to `reverse`, invoice and receipt PDFs include the following text: **"Reverse charge"**.
enum CustomerTaxExempt {
  exempt('exempt'),
  none('none'),
  reverse('reverse');

  const CustomerTaxExempt(this.value);
  final String value;
}
