// ignore_for_file: type=lint
/// auto generated
///  The type of [verification check](https://docs.stripe.com/identity/verification-checks) to be performed.
enum WithSessionPostRequestBodyType {
  document('document'),
  idNumber('id_number');

  const WithSessionPostRequestBodyType(this.value);
  final String value;
}
