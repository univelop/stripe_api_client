// ignore_for_file: type=lint
/// auto generated
///  The type of dispute opened. Different case types may have varying fees and financial impact.
enum DisputePaymentMethodDetailsCardCaseType {
  block('block'),
  chargeback('chargeback'),
  compliance('compliance'),
  inquiry('inquiry'),
  resolution('resolution');

  const DisputePaymentMethodDetailsCardCaseType(this.value);
  final String value;
}
