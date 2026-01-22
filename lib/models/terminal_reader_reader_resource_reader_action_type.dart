// ignore_for_file: type=lint
/// auto generated
///  Type of action performed by the reader.
enum TerminalReaderReaderResourceReaderActionType {
  collectInputs('collect_inputs'),
  collectPaymentMethod('collect_payment_method'),
  confirmPaymentIntent('confirm_payment_intent'),
  processPaymentIntent('process_payment_intent'),
  processSetupIntent('process_setup_intent'),
  refundPayment('refund_payment'),
  setReaderDisplay('set_reader_display');

  const TerminalReaderReaderResourceReaderActionType(this.value);
  final String value;
}
