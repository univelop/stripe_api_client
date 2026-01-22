// ignore_for_file: type=lint
/// auto generated
///  Type of email to send to the customer, one of `credit_note` or `none` and the default is `credit_note`.
enum CreditNotesPostRequestBodyEmailType {
  creditNote('credit_note'),
  none('none');

  const CreditNotesPostRequestBodyEmailType(this.value);
  final String value;
}
