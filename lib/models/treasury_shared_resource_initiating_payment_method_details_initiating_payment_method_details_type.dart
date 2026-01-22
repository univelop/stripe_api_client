// ignore_for_file: type=lint
/// auto generated
///  Polymorphic type matching the originating money movement's source. This can be an external account, a Stripe balance, or a FinancialAccount.
enum TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType {
  balance('balance'),
  financialAccount('financial_account'),
  issuingCard('issuing_card'),
  stripe('stripe'),
  usBankAccount('us_bank_account');

  const TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetailsType(
      this.value);
  final String value;
}
