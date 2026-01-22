// ignore_for_file: type=lint
/// auto generated
///  Type of installment plan, one of `fixed_count`, `bonus`, or `revolving`.
enum PaymentMethodDetailsCardInstallmentsPlanType {
  bonus('bonus'),
  fixedCount('fixed_count'),
  revolving('revolving');

  const PaymentMethodDetailsCardInstallmentsPlanType(this.value);
  final String value;
}
