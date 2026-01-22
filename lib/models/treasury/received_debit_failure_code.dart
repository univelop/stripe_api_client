// ignore_for_file: type=lint
/// auto generated
///  Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn't have sufficient funds, is closed, or is frozen.
enum ReceivedDebitFailureCode {
  accountClosed('account_closed'),
  accountFrozen('account_frozen'),
  insufficientFunds('insufficient_funds'),
  internationalTransaction('international_transaction'),
  other('other');

  const ReceivedDebitFailureCode(this.value);
  final String value;
}
