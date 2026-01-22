// ignore_for_file: type=lint
/// auto generated
///  The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
enum PaymentMethodOptionsCustomerBalanceFundingType {
  bankTransfer('bank_transfer');

  const PaymentMethodOptionsCustomerBalanceFundingType(this.value);
  final String value;
}
