// ignore_for_file: type=lint
/// auto generated
///  Reason for the failure.
enum TreasuryInboundTransfersResourceFailureDetailsCode {
  accountClosed('account_closed'),
  accountFrozen('account_frozen'),
  bankAccountRestricted('bank_account_restricted'),
  bankOwnershipChanged('bank_ownership_changed'),
  debitNotAuthorized('debit_not_authorized'),
  incorrectAccountHolderAddress('incorrect_account_holder_address'),
  incorrectAccountHolderName('incorrect_account_holder_name'),
  incorrectAccountHolderTaxId('incorrect_account_holder_tax_id'),
  insufficientFunds('insufficient_funds'),
  invalidAccountNumber('invalid_account_number'),
  invalidCurrency('invalid_currency'),
  noAccount('no_account'),
  other('other');

  const TreasuryInboundTransfersResourceFailureDetailsCode(this.value);
  final String value;
}
