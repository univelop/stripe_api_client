// ignore_for_file: type=lint
/// auto generated
///  The customer's tax exempt status. Until the invoice is finalized, this field will equal `customer.tax_exempt`. Once the invoice is finalized, this field will no longer be updated.
enum InvoiceCustomerTaxExempt {
  exempt('exempt'),
  none('none'),
  reverse('reverse');

  const InvoiceCustomerTaxExempt(this.value);
  final String value;
}
