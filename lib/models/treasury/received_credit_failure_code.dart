// ignore_for_file: type=lint
/// auto generated
///  Reason for the failure. A ReceivedCredit might fail because the receiving FinancialAccount is closed or frozen.
enum ReceivedCreditFailureCode {
  accountClosed('account_closed'),
  accountFrozen('account_frozen'),
  internationalTransaction('international_transaction'),
  other('other');

  const ReceivedCreditFailureCode(this.value);
  final String value;
}
