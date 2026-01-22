// ignore_for_file: type=lint
/// auto generated
///  Reason for the return.
enum TreasuryOutboundPaymentsResourceReturnedStatusCode {
  accountClosed('account_closed'),
  accountFrozen('account_frozen'),
  bankAccountRestricted('bank_account_restricted'),
  bankOwnershipChanged('bank_ownership_changed'),
  declined('declined'),
  incorrectAccountHolderName('incorrect_account_holder_name'),
  invalidAccountNumber('invalid_account_number'),
  invalidCurrency('invalid_currency'),
  noAccount('no_account'),
  other('other');

  const TreasuryOutboundPaymentsResourceReturnedStatusCode(this.value);
  final String value;
}
