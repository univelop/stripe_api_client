// ignore_for_file: type=lint
/// auto generated
///  The purpose for which payments are made. Has a default value based on your merchant category code.
enum MandateOptionsPaytoPurpose {
  dependantSupport('dependant_support'),
  government('government'),
  loan('loan'),
  mortgage('mortgage'),
  other('other'),
  pension('pension'),
  personal('personal'),
  retail('retail'),
  salary('salary'),
  tax('tax'),
  utility('utility');

  const MandateOptionsPaytoPurpose(this.value);
  final String value;
}
