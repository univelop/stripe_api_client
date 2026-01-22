// ignore_for_file: type=lint
/// auto generated
///  Details on why we couldn't commit the tax transaction.
enum TaxProductResourceTaxAssociationTransactionAttemptsResourceErroredReason {
  anotherPaymentAssociatedWithCalculation(
      'another_payment_associated_with_calculation'),
  calculationExpired('calculation_expired'),
  currencyMismatch('currency_mismatch'),
  originalTransactionVoided('original_transaction_voided'),
  uniqueReferenceViolation('unique_reference_violation');

  const TaxProductResourceTaxAssociationTransactionAttemptsResourceErroredReason(
      this.value);
  final String value;
}
