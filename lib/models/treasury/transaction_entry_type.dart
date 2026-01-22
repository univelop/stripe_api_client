// ignore_for_file: type=lint
/// auto generated
///  The specific money movement that generated the TransactionEntry.
enum TransactionEntryType {
  creditReversal('credit_reversal'),
  creditReversalPosting('credit_reversal_posting'),
  debitReversal('debit_reversal'),
  inboundTransfer('inbound_transfer'),
  inboundTransferReturn('inbound_transfer_return'),
  issuingAuthorizationHold('issuing_authorization_hold'),
  issuingAuthorizationRelease('issuing_authorization_release'),
  other('other'),
  outboundPayment('outbound_payment'),
  outboundPaymentCancellation('outbound_payment_cancellation'),
  outboundPaymentFailure('outbound_payment_failure'),
  outboundPaymentPosting('outbound_payment_posting'),
  outboundPaymentReturn('outbound_payment_return'),
  outboundTransfer('outbound_transfer'),
  outboundTransferCancellation('outbound_transfer_cancellation'),
  outboundTransferFailure('outbound_transfer_failure'),
  outboundTransferPosting('outbound_transfer_posting'),
  outboundTransferReturn('outbound_transfer_return'),
  receivedCredit('received_credit'),
  receivedDebit('received_debit');

  const TransactionEntryType(this.value);
  final String value;
}
