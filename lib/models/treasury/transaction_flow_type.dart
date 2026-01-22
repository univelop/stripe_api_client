// ignore_for_file: type=lint
/// auto generated
///  Type of the flow that created the Transaction.
enum TransactionFlowType {
  creditReversal('credit_reversal'),
  debitReversal('debit_reversal'),
  inboundTransfer('inbound_transfer'),
  issuingAuthorization('issuing_authorization'),
  other('other'),
  outboundPayment('outbound_payment'),
  outboundTransfer('outbound_transfer'),
  receivedCredit('received_credit'),
  receivedDebit('received_debit');

  const TransactionFlowType(this.value);
  final String value;
}
