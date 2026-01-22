// ignore_for_file: type=lint
/// auto generated
///  The reason why this PaymentMethod's fingerprint has been blocked
enum PaymentMethodUsBankAccountBlockedReason {
  bankAccountClosed('bank_account_closed'),
  bankAccountFrozen('bank_account_frozen'),
  bankAccountInvalidDetails('bank_account_invalid_details'),
  bankAccountRestricted('bank_account_restricted'),
  bankAccountUnusable('bank_account_unusable'),
  debitNotAuthorized('debit_not_authorized'),
  tokenizedAccountNumberDeactivated('tokenized_account_number_deactivated');

  const PaymentMethodUsBankAccountBlockedReason(this.value);
  final String value;
}
