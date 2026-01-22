// ignore_for_file: type=lint
/// auto generated
///  The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
enum CustomersPostRequestBodyTaxExempt {
  exempt('exempt'),
  none('none'),
  reverse('reverse');

  const CustomersPostRequestBodyTaxExempt(this.value);
  final String value;
}
