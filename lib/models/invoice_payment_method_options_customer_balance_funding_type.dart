// ignore_for_file: type=lint
/// auto generated
///  The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
enum InvoicePaymentMethodOptionsCustomerBalanceFundingType {
  bankTransfer('bank_transfer');

  const InvoicePaymentMethodOptionsCustomerBalanceFundingType(this.value);
  final String value;
}
